//
//  FindModel.swift
//  MuVi Design app
//
//  Created by Neosoft on 14/12/23.
//

import Foundation
import UIKit

struct LanguageDetails{
    let name: String?
    let langauge: String?
    let color: UIColor?
    let movieCount: Int?
}

var languages = ["language0":
                LanguageDetails(name: "Arab", langauge: "عربى", color: AppColors.blueColor, movieCount: 10),
                 "language1": LanguageDetails(name: "English", langauge: "English", color: AppColors.orangeColor, movieCount: 13),
                 "language2": LanguageDetails(name: "Hindi", langauge: "हिन्दी", color: AppColors.lightPurpleColor, movieCount: 1)]

var popularCast = ["cast0":Cast(name: "Mark \nFamiglietti",image: "Mark Famiglietti"),
                   "cast1":Cast(name:"Tom \nHolland",image:"Tom Holland"),
                   "cast2":Cast(name:"Zendaya \nZendaya",image:"Zendaya Zendaya"),
                   "cast3":Cast(name:"Hamdy \nAl-Merghany",image:"Hamdy Al-Merghany"),
                   "cast4":Cast(name:"Bayoumi \nFouad",image:"Bayoumi Fouad"),
                   "cast5":Cast(name:"Menna \nShalaby",image:"Menna Shalaby"),
                   "cast6":Cast(name:"Ellen \nWong",image:"Ellen Wong")]

let popularSearchData = [
    "movie0": MovieDetails(name: "Jawan", image: "Jawan", genre: "SciFi/ Thriller", searchCount: "100000", duration: "01h 38m", rating: "R18 TBC"),
    "movie1": MovieDetails(name: "Oppenheimer", image: "Oppenheimer", genre: "Suspence", searchCount: "100000", duration: "01h 38m", rating: "R18 TBC")
]
