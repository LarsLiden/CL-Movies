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
    location: Location,
}
export interface Location {
    city: string
    state: string
}

export interface Movie {
    name: string
    genre: string
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


export function FindMovieMatch(
    movieName: string | null,
    genre: string | null,
    city: string | null,
    state: string | null,
    theaterName: string | null,
    dateTimeRange: MomentRange) {
        
    let matchedMovies = [...getMovies()]
    if (movieName) {
        let movieNameTest = movieName.toLowerCase()
        matchedMovies = matchedMovies.filter(m => m.name.toLowerCase() === movieNameTest)
    }
    if (genre) {
        let genreTest = genre.toLowerCase()
        matchedMovies = matchedMovies.filter(m => m.genre.toLowerCase() === genreTest)
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

function createShowings(): Showing[] {
    let showings: Showing[] = []
    theaters.forEach(theater => {
        let showing: Showing = {
            theater,
            times: createTimes()
        }
        showings.push(showing)
    })
    return showings
}

function createMovies(): Movie[] {
    movies = []
    movieNames.forEach(partialMovie => {
        let movie: Movie = {
            name: partialMovie.name!,
            genre: partialMovie.genre!, 
            showings: createShowings() }
        movies.push(movie)
        }
    )
    return movies
}

let theaters: Theater[] = [
    {
        name: "REGAL LLOYD CENTER 10",
        location: {city: "Portland", state: "Oregon"}
    },
    {
        name: "Regal Meridian 16",
        location: {city: "Seattle", state: "Washington"}
    },
    {
        name: "AMC SHOWPLACE CARBONDALE 8",
        location: {city: "Carbondale", state: "Illinois"}
    }
]

let movieNames: Partial<Movie>[] = [
    {name: "Star Wars", genre: "SciFi"},
    {name: "Zoolander 2", genre: "Comedy"},
    {name: "The Other Side of the Door", genre: "Thriller"},
    {name: "The Which", genre: "Thriller"},
    {name: "The Boy", genre: "Thriller"},
    {name: "Deadpool", genre: "Action"}
    {name: "London Has Fallen", genre: "Action"}
    {name: "The Revenant", genre: "Action"}
]
