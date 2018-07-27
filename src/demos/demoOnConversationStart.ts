/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */
import * as path from 'path'
import * as express from 'express'
import { BotFrameworkAdapter } from 'botbuilder'
import { ConversationLearner, FileStorage } from '@conversationlearner/sdk'
import chalk from 'chalk'
import config from '../config'
import getDolRouter from '../dol'

console.log(`Config:\n`, JSON.stringify(config, null, '  '))

//===================
// Create Bot server
//===================
const server = express()

const isDevelopment = process.env.NODE_ENV === 'development'
if (isDevelopment) {
    console.log(chalk.yellowBright(`Adding /directline routes`))
    server.use(getDolRouter(config.botPort))
}

server.listen(config.botPort, () => {
    console.log(`Server listening to port: ${config.botPort}`)
})

const { bfAppId, bfAppPassword, modelId, ...clOptions } = config

//==================
// Create Adapter
//==================
const adapter = new BotFrameworkAdapter({ appId: bfAppId, appPassword: bfAppPassword });

//==================================
// Storage 
//==================================
// Initialize ConversationLearner using file storage.  Recommended only for development
// See "storageDemo.ts" for other storage options
let fileStorage = new FileStorage(path.join(__dirname, 'storage'))

//==================================
// Initialize Conversation Learner
//==================================
const sdkRouter = ConversationLearner.Init(clOptions, fileStorage)
if (isDevelopment) {
    console.log(chalk.cyanBright(`Adding /sdk routes`))
    server.use('/sdk', sdkRouter)
}

let cl = new ConversationLearner("2dbd02af-c394-411d-b629-62a5c7f959c6");

//=================================
// Handle Incoming Messages
//=================================
server.post('/api/messages', (req, res) => {
    adapter.processActivity(req, res, async context => {

        if (!await cl.InTrainingUI(context)) {
            if (context.activity.type == "conversationUpdate") {
                // Ignore if bot join message
                if (context.activity.membersAdded && context.activity.membersAdded[0] && context.activity.from.name != context.activity.membersAdded[0].name) {
                    return
                }
                // Convert to message
                context.activity.type = "message"
                context.activity.text = `onConversationUpdate Join: ${context.activity.from.name}`
            }
        }
        const result = await cl.recognize(context)
        
        if (result) {
            cl.SendResult(result);
        }
    })
})

export default server

