//
//  Constants.swift
//  MuVi Design app
//
//  Created by Neosoft on 01/12/23.
//

import Foundation
import UIKit

enum Constants:String{
    case primary1 = "primary1"
    case primary2 = "primary2"
    
    case walkThroughlbl1 = "Movie experience \n for every mood"
    case walkThroughlbl2 = "Smooth & enjoyable \n Experience"
     
    case walkThroughbtn1 = "NEXT"
    case walkThroughbtn2 = "GET STARTED"
    
    case lbl = "lbl"
    case btn = "btn"
}

enum ScreenText:String{
    case btnProceed = "Proceed"
    case btnApply = "APPLY"
    
    case search = "Search"
    
    case lblFindMovies = "FindMovies @MuviCinemas"
    
    case txtSearchbyName = "Search by Name, Actor…"
    
    case findSection0 = "Browse By Genre"
    case findSection1 = "Browse By Experience"
    case findSection2 = "Languages"
    case findSection3 = "Popular Searches"
    case findSection4 = "Popular Cast"
}

enum ImageStrings:String{
    case discoverImg = "discoverIcon"
    case moviesImg = "moviesIcon"
    case foodDrinksImg = "food&drinksIcon"
    case experienceImg  = "experienceIcon"
    case findImg = "findIcon"
    case searchImg = "magnifyingglass"
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
}

enum UserDefaultKeys:String{
    case hasAppLauchedBefore = "hasAppLauchedBefore"
}
