import moment = require("moment");

export const DATE_FORMAT = "YYYY-MM-DD"
export const TIME_FORMAT = "HH:mm:ss"
export const DATETIME_FORMAT = `${DATE_FORMAT}${TIME_FORMAT}`

export interface SearchTimes {
    date: string
    startTime: string
    endTime: string
}

export interface MomentRange {
    startDate: moment.Moment | null 
    startTime: moment.Moment | null
    endDate: moment.Moment | null 
    endTime: moment.Moment | null
}

export interface TimeRange {
    startDate: string | null
    startTime: string | null
    endDate: string | null
    endTime: string | null
}

export function toTimeRange(mo: MomentRange | null) : TimeRange {
    if (!mo) {
        return {startDate: null, startTime: null, endDate: null, endTime: null}
    }
    return {
        startDate: mo.startDate ? mo.startDate.format(DATE_FORMAT) : null,
        startTime:  mo.startTime ? mo.startTime.format(TIME_FORMAT) : null,
        endDate: mo.endDate ? mo.endDate.format(DATE_FORMAT) : null,
        endTime: mo.endTime ? mo.endTime.format(TIME_FORMAT) : null
    }
}

export function toMomentRange(tr: TimeRange | null): MomentRange {
    if (!tr) {
        return {startDate: null, startTime: null, endDate: null, endTime: null}
    }
    return {
        startDate: tr.startDate ? moment(tr.startDate, DATE_FORMAT) : null,
        startTime:  tr.startTime ? moment(tr.startTime, TIME_FORMAT) : null,
        endDate: tr.endDate ? moment(tr.endDate, DATE_FORMAT) : null,
        endTime: tr.endTime ? moment(tr.endTime, TIME_FORMAT) : null
    }
}

export interface Showing {
    theater: Theater
    times: moment.Moment[]
}

export interface Theater {
    name: string,
    shortName: string,
    location: Location,
}
export interface Location {
    city: string
    state: string
}

export interface Movie {
    name: string
    genre: string[]
    rating: number,
    theaters: string[]
    showings: Showing[]
}

export function FindTimeMatch(showing: Showing, dateTimeRange: MomentRange): moment.Moment[] {

    let times = [...showing.times]
    if (dateTimeRange.startDate) {
        let startTime = dateTimeRange.startDate
        times = times.filter(time => time.day() === startTime.day())   
    }
    if (dateTimeRange.startTime) {
        let startTime = dateTimeRange.startTime
        times = times.filter(time => time.hour() >= startTime.hour())
    }
    if (dateTimeRange.endTime) {
        let endTime = dateTimeRange.endTime
        times = times.filter(time => time.hour() <= endTime.hour())
    }
    return times
    }

export function FindShowingMatch(
    movie: Movie,
    city: string | null,
    state: string | null,
    theaterName: string | null,
    dateTimeRange: MomentRange) : Showing[] {

    let showings = [...movie.showings]
    if (city) {
        let cityNameTest = city.toLowerCase()
        showings = showings.filter(s => s.theater.location.city.toLowerCase() === cityNameTest)
    }
    if (state) {
        let stateNameTest = state.toLowerCase()
        showings = showings.filter(s => s.theater.location.state.toLowerCase() === stateNameTest)
    }
    if (theaterName) {
        let theaterNameTest = theaterName.toLowerCase()
        showings = showings.filter(s => s.theater.name.toLowerCase() === theaterNameTest)
    }
    showings = showings.filter(s => FindTimeMatch(s, dateTimeRange).length > 0)

    return showings
}


export function stringMatch(text1: string, text2: string) {
    let text11 = text1.toLowerCase().replace("'","")
    let text22 = text2.toLowerCase().replace("'","")
    return text11 === text22
}
export function FindMovieMatch(
    movieName: string | null,
    genre: string | null,
    city: string | null,
    state: string | null,
    theaterName: string | null,
    dateTimeRange: MomentRange) {
        
    let matchedMovies = [...getMovies()]
    if (movieName) {
        matchedMovies = matchedMovies.filter(m => stringMatch(m.name, movieName))
    }
    if (genre) {
        let genreTest = genre.toLowerCase()
        matchedMovies = matchedMovies.filter(m => m.genre.find(g => g.toLowerCase() === genreTest))
    }
    matchedMovies = matchedMovies.filter(m => FindShowingMatch(m, city, state, theaterName, dateTimeRange).length > 0)
   
    return matchedMovies
}

export function getMovies(): Movie[] {
    if (movies.length == 0) {
        movies = createMovies()
    }
    return movies
}

let movies: Movie[] = []

function createTimes(): moment.Moment[] {
    let times: moment.Moment[] = []
    let today = new Date()
    for (let i=0; i<7; i++) {
        for (let time=10; time<=24; time+=2) {
            let date = new Date(today.getFullYear(),today.getMonth(),today.getDate()+i, time)
            times.push(moment(date))
        }
    }
    return times
}

function createShowings(include: string[]): Showing[] {
    let showings: Showing[] = []

    let includedTheaters = include.map(shortName => theaters.find(t => t.shortName === shortName))
    includedTheaters.forEach(theater => {
            if (theater) {
            let showing: Showing = {
                theater,
                times: createTimes()
            }
            showings.push(showing)
        }
    })
    return showings
}

function createMovies(): Movie[] {
    movies = []
    movieNames.forEach(partialMovie => {
        let movie: Movie = {
            name: partialMovie.name!,
            genre: partialMovie.genre || [],
            rating: partialMovie.rating || 50,
            theaters: partialMovie.theaters || [],
            showings: createShowings(partialMovie.theaters || []) }
        movies.push(movie)
        }
    )
    return movies
}

let theaters: Theater[] = [
    {
        name: "AMC PACIFIC PLACE 11",
        shortName: "APP11",
        location: {city: "Seattle", state: "Washington"}
    },
    {
        name: "AMC SHOWPLACE CARBONDALE 8",
        shortName: "ASC8",
        location: {city: "Carbondale", state: "Illinois"}
    },
    {
        name: "REGAL LLOYD CENTER 10",
        shortName: "RLC10",
        location: {city: "Portland", state: "Oregon"}
    },
    {
        name: "Regal Meridian 16",
        shortName: "RM16",
        location: {city: "Seattle", state: "Washington"}
    }
]

let movieNames: Partial<Movie>[] = [
    {name: "10 Cloverfield Lane", genre: ["NewRelese"], theaters: ["APP11"]},
    {name: "Deadpool", genre: ["Action", "Violent"], rating: 84},
    {name: "Kung Fu Panda 3", theaters: ["RM16"]},
    {name: "London Has Fallen", genre: ["Action"], theaters: ["RM16"]},
    {name: "Spotlight", theaters: ["RM16"]},
    {name: "Star Wars", genre: ["SciFi"], theaters: ["RLC10", "RM16"]},
    {name: "The Other Side of the Door", genre: ["Thriller"], theaters: ["ASC8"]},
    {name: "The Big Short"},
    {name: "The Danish Girl"},
    {name: "The Boy", genre: ["Thriller"], theaters: ["ASC8"]},
    {name: "The Brothers Grimsby", genre: ["NewRelese"], theaters: ["APP11"]},
    {name: "The Perfect Match", genre: ["NewRelese"], theaters: ["APP11"]},
    {name: "The Revenant", genre: ["Action"]},
    {name: "The Which", genre: ["Thriller"], theaters: ["ASC8"]},
    {name: "Triple 9", theaters: ["RM16"]},
    {name: "Where to Invade Next"},
    {name: "Whiskey Tango Foxtrot", theaters: ["RM16"]}, 
    {name: "Zoolander 2", genre: ["Comedy"], theaters: ["RM16"]},
    {name: "Zootopia", theaters: ["RM16"]},
]
