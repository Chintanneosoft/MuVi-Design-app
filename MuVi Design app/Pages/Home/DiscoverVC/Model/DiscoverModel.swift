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
}

var newMovies = ["movie0": MovieDetails(name: "MOONLIGHT", image: "MoonLight", genre: "ADVENTURE", rating: "R12", launchDate: "20", isComingSoon: true),
                 "movie1": MovieDetails(name: "JAWAN", image: "Jawan", genre: "THRILLER", rating: "R12", launchDate: "20", isComingSoon: false),
                 "movie2": MovieDetails(name: "OPPENHEIMER", image: "Oppenheimer", genre: "SUSPENCE", rating: "R12", launchDate: "20", isComingSoon: false)]

var recommendedMovies = ["movie0": MovieDetails(name: "My Sweet Monster", image: "MoonLight", genre: "ADVENTURE", rating: "R12", launchDate: "20", isComingSoon: true),
                         "movie1": MovieDetails(name: "Scream", image: "Scream", genre: "THRILLER", rating: "R12", launchDate: "20", isComingSoon: false),
                         "movie2": MovieDetails(name: "Game Of Thrones", image: "GOT", genre: "SUSPENCE", rating: "R12", launchDate: "20", isComingSoon: false)]
