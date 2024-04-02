//
//  DiscoverModel.swift
//  MuVi Design app
//
//  Created by Neosoft on 18/12/23.
//

import Foundation

struct MovieDetails {
    var name: String?
    var image: String?
    var genre: String?
    var searchCount: String?
    var duration: String?
    var rating: String?
    var launchDate: String?
    var isComingSoon: Bool?
    var cast: [Cast]?
    var description: String?
    var review: String?
    var director: String?
    var language: LanguageDetails?
}

struct Cast{
    var name: String?
    var image: String?
}

var allMovies = [
    "movie0": MovieDetails(
        name: "My Sweet Monster",
        image: "My Sweet Monster",
        genre: "ANIMATION",
        duration: "02h 10m", rating: "PG",
        launchDate: "28 April 2022",
        isComingSoon: false,
        cast: [
            Cast(name: "Haylie Duff", image: "HaylieDuff"),
            Cast(name: "Jon Heder", image: "JonHeder"),
            Cast(name: "Pauly Shore", image: "PaulyShore")
        ],
        description: "My Sweet Monster is a 2021 Russian animated musical film directed by Viktor Glukhushin and Maksim Volkov. The film was released in Russia on April 28, 2022[^1^][9].",
        review: "No Reviews added yet.",
        director: "Viktor Glukhushin and Maksim Volkov",
        language: languages["language1"]
    ),
    "movie1": MovieDetails(
        name: "Scream",
        image: "Scream",
        genre: "HORROR",
        duration: "02h 10m", rating: "R",
        launchDate: "20 December 1996",
        isComingSoon: false,
        cast: [
            Cast(name: "Neve Campbell", image: "NeveCampbell"),
            Cast(name: "Courteney Cox", image: "CourteneyCox"),
            Cast(name: "David Arquette", image: "DavidArquette")
        ],
        description: "Scream is a 1996 American slasher film directed by Wes Craven and written by Kevin Williamson. The film follows the character of Sidney Prescott (Campbell), a high school student in the fictional town of Woodsboro, California, who becomes the target of a mysterious killer in a Halloween costume known as Ghostface[^2^][2].",
        review: "No Reviews added yet.",
        director: "Wes Craven",
        language: languages["language0"]
    ),
    "movie2": MovieDetails(
        name: "Game Of Thrones",
        image: "GOT",
        genre: "FANTASY",
        duration: "02h 10m", rating: "TV-MA",
        launchDate: "17 April 2011",
        isComingSoon: false,
        cast: [
            Cast(name: "Emilia Clarke", image: "EmiliaClarke"),
            Cast(name: "Peter Dinklage", image: "PeterDinklage"),
            Cast(name: "Kit Harington", image: "KitHarington")
        ],
        description: "Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss for HBO. It is an adaptation of A Song of Ice and Fire, a series of fantasy novels by George R. R. Martin, the first of which is A Game of Thrones[^3^][14].",
        review: "No Reviews added yet.",
        director: "David Benioff and D. B. Weiss",
        language: languages["language1"]
    ),
    "movie3": MovieDetails(
        name: "Last Survivors",
        image: "Last Survivors",
        genre: "THRILLER",
        duration: "02h 10m", rating: "R",
        launchDate: "4 February 2022",
        isComingSoon: false,
        cast: [
            Cast(name: "Drew Van Acker", image: "DrewVanAcker"),
            Cast(name: "Alicia Silverstone", image: "AliciaSilverstone"),
            Cast(name: "Stephen Moyer", image: "StephenMoyer")
        ],
        description: "Last Survivors is a 2021 American thriller film directed by Drew Mylrea and starring Drew Van Acker, Alicia Silverstone and Stephen Moyer. It takes place in a post-apocalyptic world where for the past twenty years Troy has raised his now grown son, Jake, in isolation in the woods miles away from any remnants of civilization[^1^][9].",
        review: "No Reviews added yet.",
        director: "Drew Mylrea",
        language: languages["language1"]
    ),
    "movie4": MovieDetails(
        name: "MOONLIGHT",
        image: "MoonLight",
        genre: "ADVENTURE",
        duration: "02h 10m", rating: "R12",
        launchDate: "20",
        isComingSoon: true,
        cast: [
            Cast(name: "John Bradley",image: "John Bradley"),
            Cast(name: "Halle Berry",image: "Halle Berry"),
            Cast(name: "Patrick Wilson",image: "Patrick Wilson")
        ],
        description: "In Moonfall, a mysterious force knocks the Moon from its orbit around Earth and sends it hurdling on a collision course with life as we know it. With mere weeks before impact and the world on the brink of annihilation, NASA executive and former astronaut Jo Fowler is convinced she has the key to saving us all - but only one astronaut from her past, Brian Harper and a conspiracy theorist K.C. Houseman believe her. These unlikely heroes will mount an impossible last-ditch mission into space, leaving behind everyone they love, only to find that they might have prepared for the wrong mission.",
        review: "No Reviews added yet as Movie is yet to be released.",
        director: "Roland Emmerich",
        language: languages["language1"]
    ),
    "movie5": MovieDetails(
        name: "JAWAN",
        image: "Jawan",
        genre: "THRILLER",
        duration: "02h 10m", rating: "R12",
        launchDate: "20",
        isComingSoon: false,
        cast: [
            Cast(name: "Shah Rukh Khan", image: "Shah Rukh Khan"),
            Cast(name: "Nayanthara", image: "Nayanthara"),
            Cast(name: "Vijay Sethupathi", image: "Vijay Sethupathi")
        ],
        description: "Jawan is a 2023 Indian Hindi-language action thriller film co-written and directed by Atlee in his Hindi film debut. It is produced by Gauri Khan and Gaurav Verma under Red Chillies Entertainment. The film stars Shah Rukh Khan in a dual role as father and son who team up to rectify corruption in India.",
        review: "Jawan is a thrilling ride that keeps you on the edge of your seat.",
        director: "Atlee",
        language: languages["language2"]
    ),
    "movie6": MovieDetails(
        name: "OPPENHEIMER",
        image: "Oppenheimer",
        genre: "SUSPENCE",
        duration: "02h 10m", rating: "R12",
        launchDate: "20",
        isComingSoon: false,
        cast: [
            Cast(name: "Cillian Murphy", image: "Cillian Murphy"),
            Cast(name: "Emily Blunt", image: "Emily Blunt"),
            Cast(name: "Robert Downey Jr.", image: "Robert Downey Jr.")
        ],
        description: "Oppenheimer is a 2023 American biographical drama film directed and produced by Christopher Nolan, based on the life of J. Robert Oppenheimer, one of the lead scientists on the Manhattan Project.",
        review: "Oppenheimer provides a deep and thoughtful look into the life of one of the most influential scientists of the 20th century.",
        director: "Christopher Nolan" ,
        language: languages["language1"]
    )
]

var newMovies = ["movie0":allMovies["movie4"]!,"movie1":allMovies["movie5"]!,"movie2":allMovies["movie6"]!]
var recommendedMovies = ["movie0":allMovies["movie0"]!,"movie1":allMovies["movie2"]!,"movie2":allMovies["movie3"]!]
var upcomingMovies = ["movie0":allMovies["movie2"]!,"movie1":allMovies["movie5"]!,"movie2":allMovies["movie4"]!]
var popularMovies = ["movie0":allMovies["movie5"]!,"movie1":allMovies["movie1"]!,"movie2":allMovies["movie0"]!]
var mightLikeMovies = ["movie0":allMovies["movie4"]!,"movie1":allMovies["movie3"]!,"movie2":allMovies["movie2"]!]

var discoverSectionIndics = ["slider":0, "recommended":1, "betterExperience":2, "popular":3, "filterByLanguage":4, "grabPopcorn":5, "upcoming":6]

