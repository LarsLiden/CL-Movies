/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { FindMovieMatch, FindShowingMatch, Movie, TimeRange, Showing, FindTimeMatch, MomentRange, DATE_FORMAT, TIME_FORMAT, DATETIME_FORMAT, toMomentRange, toTimeRange } from './movie'
import { ConversationLearner, ClientMemoryManager, /*ReadOnlyClientMemoryManager,*/ FileStorage, MemoryValue } from '@conversationlearner/sdk'
import chalk from 'chalk'
import * as moment from 'moment'
import config from './config'

console.log(`Config:\n`, JSON.stringify(config, null, '  '))

//===================
// Create Bot server
//===================
const server = express()

const { bfAppId, bfAppPassword, modelId, ...clOptions } = config

//==================
// Create Adapter
//==================
const adapter = new BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

//==================================
// Storage 
//==================================
// Initialize ConversationLearner using file storage.  
// Recommended only for development
// See "storageDemo.ts" for other storage options
const fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)

const includeSdk = ['development', 'test'].includes(process.env.NODE_ENV || '')
if (includeSdk) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)
}

const cl = new ConversationLearner(modelId)

function genreSynonym(genre: string) {
    if (genre === "new releases" || genre == "new release") {
        return "NewRelese"
    }
    return genre
}

//=================================
// Add Entity Logic
//=================================
/**
* @param {string} text Last user input to the Bot
* @param {ClientMemoryManager} memoryManager Allows for viewing and manipulating Bot's memory
* @returns {Promise<void>}
*/
cl.EntityDetectionCallback(async (text: string, memoryManager: ClientMemoryManager): Promise<void> => {

    let genres = memoryManager.Get("filter-genre", ClientMemoryManager.AS_STRING_LIST)
    if (genres.length > 0) {
        genres = genres.map(g => genreSynonym(g))
        memoryManager.Delete('filter-genre')
        memoryManager.Set('filter-genre', genres)
    }

    // Split datetime into date and teim
    let dateTimeRange = memoryManager.Get("filter-datetime", DATE_AS_MOMENTRANGE)
    memoryManager.Delete("filter-datetime")
 
    // TODO : what if user sends both?

    let dateRange = memoryManager.Get("filter-date", DATE_AS_MOMENTRANGE)
    memoryManager.Delete("filter-date")

    let timeRange = memoryManager.Get("filter-time", DATE_AS_MOMENTRANGE)
    memoryManager.Delete("filter-time")

    // Get existing filter
    let existingRange = memoryManager.Get("resolved-times", AS_MOMENTRANGE)

    // Merge data
    let momentRange: MomentRange = {
        startDate: dateTimeRange.startDate || dateRange.startDate || existingRange.startDate,
        startTime: dateTimeRange.startTime || timeRange.startTime || existingRange.startTime,
        endDate: dateRange.endDate || existingRange.endDate,
        endTime: dateRange.endTime || existingRange.endTime
    }

    if (!momentRange.startDate && !momentRange.startTime && !momentRange.endDate && !momentRange.endTime) {
        memoryManager.Delete("resolved-times")
    }
    else {  
        memoryManager.Set("resolved-times", toTimeRange(momentRange))
    }
})

//=================================
// Define any API callbacks
//=================================

function DATE_AS_MOMENTRANGE(memoryValues: MemoryValue[]): MomentRange {

    let startDate: moment.Moment | null = null
    let startTime: moment.Moment | null = null
    let endDate: moment.Moment | null = null
    let endTime: moment.Moment | null = null

    if (memoryValues.length > 0 && memoryValues[0].resolution) {
        
        let values = (memoryValues[0].resolution as any)['values']
        if (values !== undefined) {
    
            // Always pick the last if more than one (for now)
            let resolution = values[values.length - 1]

            if (resolution.type === "date") {
                startDate = moment(resolution.value, DATE_FORMAT)
            }
            else if (resolution.type === "time") {
                startTime = moment(resolution.value, TIME_FORMAT)
            }
            else if (resolution.type === "datetime") {
                // Separate out date and time
                let dateTime = moment(resolution.value, DATETIME_FORMAT)
                startDate = moment(dateTime.format(DATE_FORMAT), DATE_FORMAT)
                startTime =  moment(dateTime.format(TIME_FORMAT), TIME_FORMAT)
            }
            else if(resolution.type === "datetimerange") {
                // Separate out date and time
                let startDateTime = moment(resolution.start, DATETIME_FORMAT)
                startDate = moment(startDateTime.format(DATE_FORMAT), DATE_FORMAT)
                startTime =  moment(startDateTime.format(TIME_FORMAT), TIME_FORMAT)

                // Only store end 
                let endDateTime = moment(resolution.end, DATETIME_FORMAT)
                endDate = moment(endDateTime.format(DATE_FORMAT), DATE_FORMAT)
                endTime =  moment(endDateTime.format(TIME_FORMAT), TIME_FORMAT)
            }
        }
    }
    return {startDate, startTime, endDate, endTime}
}

function AS_MOMENTRANGE(memoryValues: MemoryValue[]): MomentRange {
    let timeRange: TimeRange =memoryValues[0] ? JSON.parse(memoryValues[0].userText!) : null
    return toMomentRange(timeRange)
}

cl.AddCallback({
    name: "GetMovies",
    logic: async (memoryManager: ClientMemoryManager) => {
        // Find movies that meet filter criteria
        let movieName = memoryManager.Get("filter-movie-name", ClientMemoryManager.AS_STRING)
        let genre = memoryManager.Get("filter-genre", ClientMemoryManager.AS_STRING)
        let city = memoryManager.Get("filter-city", ClientMemoryManager.AS_STRING)
        let state = memoryManager.Get("filter-state", ClientMemoryManager.AS_STRING)
        let theaterName = memoryManager.Get("filter-theater", ClientMemoryManager.AS_STRING)

        let dateTimeRange: MomentRange = memoryManager.Get("resolved-times", AS_MOMENTRANGE)
        let movies : Movie[] = FindMovieMatch(movieName, genre, city, state, theaterName, dateTimeRange)

        memoryManager.Delete("found-time")
        memoryManager.Delete("found-theater")
        memoryManager.Delete("found-rating")
        memoryManager.Delete("found-movies")
        memoryManager.Delete("found-excess")

        if (movies.length === 0) {
            // Clear found slots
            memoryManager.Delete("found-time")
            memoryManager.Delete("found-theater")

            // TODO recomend?
        }
        // If a single movie, get maching showtimes
        else if (movies.length == 1) {
            memoryManager.Set("found-movies", movies[0].name)
            memoryManager.Set("found-rating", movies[0].rating)
            let showings: Showing[] = FindShowingMatch(movies[0], city, state, theaterName, dateTimeRange)

            // If a single showing, get matching times
            if (showings.length == 1) {
                let times: moment.Moment[] = FindTimeMatch(showings[0], dateTimeRange)

                // If a single matching time, we have a unique target
                if (times.length == 1) {
                    memoryManager.Set("found-time", times[0].format("LT"))
                    memoryManager.Set("found-theater", showings[0].theater.name)
                }
            }
            
        }
        else if (movies.length < 10) {
            memoryManager.Set("found-movies", movies.map(m => m.name))
        }
        else if (movies.length >= 10) {
            memoryManager.Set("found-excess", true)
        }
    }
})


//=================================
// Handle Incoming Messages
//=================================
server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {
        const result = await cl.recognize(context)

        if (result) {
            return cl.SendResult(result);
        }
    })
})

export default server