//
//  Constants.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import Foundation
import UIKit

enum Constants:String{
    case walkThroughlblMovie = "Movie experience \n for every mood"
    case walkThroughlblSmooth = "Smooth & enjoyable \n Experience"
    case walkThroughbtnNext = "NEXT"
    case walkThroughbtnGetStarted = "GET STARTED"
    case lbl = "lbl"
    case btn = "btn"
    case proceedBtn = "Proceed"
    case applyBtn = "APPLY"
    case search = "Search"
    case findMoviesLbl = "FindMovies @MuviCinemas"
    case searchbyNameTxt = "Search by Name, Actor…"
    case browseByGenre = "Browse By Genre"
    case browseByExperience = "Browse By Experience"
    case languages = "Languages"
    case popularSearches = "Popular Searches"
    case popularCast = "Popular Cast"
    case lastSurvivors = "Last Survivors"
    case sciFiThriller = "SciFi/ Thriller"
    case searchedBy = "Searched by"
    case people = "people"
    case duration = "Duration"
    case discover = "Discover"
    case whatsNew = "What’s New @MuviCinemas"
    case RecommendedForYou = "Recommended For You"
    case PopularMovies = "Popular Movies"
    case FilterbyLanguage = "Filter by \nLanguage"
    case UpcomingMovies = "Upcoming Movies"
    case ViewAll = "View All"
    case prebook = "PRE-BOOK"
    case watch = "WATCH"
    case GetTheBest = "Get the Best Experience"
    case muviCinemas = "@MuviCinmeas"
}

enum ImageStrings:String{
    case discoverImg = "discoverIcon"
    case moviesImg = "moviesIcon"
    case foodDrinksImg = "food&drinksIcon"
    case experienceImg  = "experienceIcon"
    case findImg = "findIcon"
    case searchImg = "magnifyingglass"
    case comingSoon = "ComingSoon"
}

enum VCNibs:String{
    case LoginVC = "LoginVC"
    case RegisterVC = "RegisterVC"
    case OTPVerificationVC = "OTPVerificationVC"
    case WalkThroughVC = "WalkThroughVC"
    case PreferencesVC = "PreferencesVC"
    case CitySelectionVC = "CitySelectionVC"
    case PreferedExperienceVC = "PreferedExperienceVC"
    case FindVC = "FindVC"
    case DiscoverVC = "DiscoverVC"
}

enum Fonts: String{
    case barlowRegular = "Barlow-Regular"
    case barlowBold = "Barlow-Bold"
    case barlowLight = "Barlow-Light"
}

enum CellIdentifiers:String{
    case WalkThroughCell = "WalkThroughCell"
    case PreferencesCell = "PreferencesCell"
    case CitySelectionCell = "CitySelectionCell"
    case FooterView = "FooterView"
    case PreferedExperienceCell = "PreferedExperienceCell"
    case FindCollectionCell = "FindCollectionCell"
    case LanguageCell = "LanguageCell"
    case DiscoverCollectionCell = "DiscoverCollectionCell"
    case DiscoverSliderCell = "DiscoverSliderCell"
    case DiscoverRecommendationCell = "DiscoverRecommendationCell"
    case BestExperienceCell = "BestExperienceCell"
    
    case DiscoverHeaderView = "DiscoverHeaderView"
    case DiscoverSectionHeaderView = "DiscoverSectionHeaderView"
}

struct AppColors{
    static var redColor = UIColor(red: 235.0/255.0, green: 48.0/255.0, blue: 91.0/255.0, alpha: 1.0)
    static var purpleColor = UIColor(red: 86.0/255.0, green: 28.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    static var primary = UIColor(red: 57.0/255.0, green: 7.0/255.0, blue: 128.0/255.0, alpha: 1.0)
    static var secondary = UIColor(red: 221.0/255.0, green: 47.0/255.0, blue: 128.0/255.0, alpha: 1.0)
    static var darkPurpleColor = UIColor(red: 57.0/255.0, green: 25.0/255.0, blue: 101.0/255.0, alpha: 1.0)
    static var blackColor = UIColor(red: 36.0/255.0, green: 34.0/255.0, blue: 34.0/255.0, alpha: 1.0)
    static var blueColor = UIColor(red: 37.0/255.0, green: 76.0/255.0, blue: 163.0/255.0, alpha: 1.0)
    static var orangeColor = UIColor(red: 239.0/255.0, green: 73.0/255.0, blue: 73.0/255.0, alpha: 1.0)
    static var lightPurpleColor = UIColor(red: 159.0/255.0, green: 69.0/255.0, blue: 191.0/255.0, alpha: 1.0)
    static var opaqueBlackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
    static var whiteColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    static var blackishPurleColor = UIColor(red: 32.0/255.0, green: 12.0/255.0, blue: 64.0/255.0, alpha: 1.0)
}

enum UserDefaultKeys:String{
    case hasAppLauchedBefore = "hasAppLauchedBefore"
}
