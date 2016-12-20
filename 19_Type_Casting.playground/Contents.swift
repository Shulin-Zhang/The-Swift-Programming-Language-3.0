//: Playground - noun: a place where people can play

import UIKit

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director : String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let s = Song(name: "a", artist: "b")

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The one", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You up", artist: "Rick Astley")
]

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir: \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by: \(song.artist)")
    }
}

var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14)
things.append("Hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print()
    case 0 as Double:
        print()
    case let someInt as Int:
        print()
    case let someDouble as Double where someDouble > 0:
        print()
    case is Double:
        print()
    case let someString as String:
        print()
    case let (x, y) as (Double, Double):
        print()
    case let movie as Movie:
        print()
    case let stringConverter as (String) -> String:
        print()
    default:
        print()
    }
}

let optionalNumber: Int? = 3
things.append(optionalNumber)
things.append(optionalNumber as Any)
