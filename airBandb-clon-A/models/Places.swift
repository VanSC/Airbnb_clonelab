//
//  AirbnbCard.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 1/12/23.
//

import Foundation

struct Airbnb: Codable {
    let places: [Places]
}

struct Places: Codable {
    let name: String
    
    let rating: Double
    let location: Locations
    
    let image_url: String
    let date: String
    let price: Double

    
}

struct Locations: Codable {
    let country: String?
    let city: String
}
