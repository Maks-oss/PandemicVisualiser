//
//  Model.swift
//  PandemicVisualiser
//
//  Created by Maksimus on 03.11.2021.
//

import Foundation

struct TotalData {
    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}


struct CountryData {
    
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}


let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 50, recovered: 25)
let testCountryData = CountryData(country: "Test", confirmed: 200, critical: 100, deaths: 50, recovered: 30, longitude: 22.22, latitude: 33.33)
