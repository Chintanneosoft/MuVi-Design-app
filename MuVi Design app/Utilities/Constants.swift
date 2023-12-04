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

enum VCNames:String{
    case LoginVC = "LoginVC"
    case WalkThroughVC = "WalkThroughVC"
}

enum Fonts: String{
    case barlowRegular = "Barlow-Regular"
    case barlowBold = "Barlow-Bold"
}

enum CellNames:String{
    case WalkThroughCell = "WalkThroughCell"
}

struct AppColors{
    static var redColor = UIColor(red: 235.0/255.0, green: 48.0/255.0, blue: 91.0/255.0, alpha: 1.0)
    static var purpleColor = UIColor(red: 86.0/255.0, green: 28.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    static var primary = UIColor(red: 57.0/255.0, green: 7.0/255.0, blue: 128.0/255.0, alpha: 1.0)
    static var darkPurpleColor = UIColor(red: 57.0/255.0, green: 25.0/255.0, blue: 101.0/255.0, alpha: 1.0)
}

