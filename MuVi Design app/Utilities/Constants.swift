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
}

enum ImageNames:String{
    case discoverImg = "discoverIcon"
    case moviesImg = "moviesIcon"
    case foodDrinksImg = "food&drinksIcon"
    case experienceImg  = "experienceIcon"
    case findImg = "findIcon"
}

enum VCNames:String{
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

enum CellNames:String{
    case WalkThroughCell = "WalkThroughCell"
    case PreferencesCell = "PreferencesCell"
    case CitySelectionCell = "CitySelectionCell"
    case FooterView = "FooterView"
    case PreferedExperienceCell = "PreferedExperienceCell"
    case FindHeaderCell = "FindHeaderCell"
    case FindCollectionCell = "FindCollectionCell"
}

struct AppColors{
    static var redColor = UIColor(red: 235.0/255.0, green: 48.0/255.0, blue: 91.0/255.0, alpha: 1.0)
    static var purpleColor = UIColor(red: 86.0/255.0, green: 28.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    static var primary = UIColor(red: 57.0/255.0, green: 7.0/255.0, blue: 128.0/255.0, alpha: 1.0)
    static var secondary = UIColor(red: 221.0/255.0, green: 47.0/255.0, blue: 128.0/255.0, alpha: 1.0)
    static var darkPurpleColor = UIColor(red: 57.0/255.0, green: 25.0/255.0, blue: 101.0/255.0, alpha: 1.0)
    static var blackColor = UIColor(red: 36.0/255.0, green: 34.0/255.0, blue: 34.0/255.0, alpha: 1.0)
}

enum UserDefaultKeys:String{
    case hasAppLauchedBefore = "hasAppLauchedBefore"
}
