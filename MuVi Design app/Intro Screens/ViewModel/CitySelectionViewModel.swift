//
//  CitySelectionViewModel.swift
//  MuVi Design app
//
//  Created by Neosoft on 06/12/23.
//

import Foundation

class CitySelectionViewModel {
    
    var nearByCities = ["Dammam","Dhahran","Hofuf"]
    var cities = ["Dammam","Dhahran","Hofuf","Jeddah","Jubail","Khamis M","Qassim","Riyadh","Taif"]
    var remainingCities = [String]()
    
    func findRemainingCities() {
        for city in cities {
            if !nearByCities.contains(city) {
                remainingCities.append(city)
            }
        }
    }
    
    var selectedCities:[String] = []
}
