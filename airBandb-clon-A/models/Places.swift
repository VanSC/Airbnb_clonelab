//
//  AirbnbCard.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 1/12/23.
//

import Foundation
import MapKit

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
    let latitude: Double
    let longitude: Double
}

struct Locations: Codable {
    let country: String?
    let city: String
}

struct PlaceCoordinate: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

