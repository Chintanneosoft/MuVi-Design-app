//
//  CitySelectionViewModel.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import Foundation
//MARK: - CitySelectionViewModel
class CitySelectionViewModel {
    
    var nearByCities = ["Dammam","Dhahran","Hofuf"]
    var cities = ["Dammam","Dhahran","Hofuf","Jeddah","Jubail","Khamis M","Qassim","Riyadh","Taif"]
    var remainingCities = [String]()
    
    //Finding remaining cities
    func findRemainingCities() {
        for city in cities {
            if !nearByCities.contains(city) {
                remainingCities.append(city)
            }
        }
    }
    
    var selectedCities:[String] = []
}
