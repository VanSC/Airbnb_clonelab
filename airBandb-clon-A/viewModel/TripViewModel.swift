//
//  TripViewModel.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 15/12/23.
//

import Foundation
import MapKit

class TripViewModel: ObservableObject {
    @Published var annotations: [PlaceCoordinate] = [PlaceCoordinate]()
        
        init() {
            let places = [
                //Places(name: "London", latitude: 51.507222, longitude: -0.1275),
                Places(name: "London", rating: 4.5, location: Locations(country: "UK", city: "London"), image_url: "http//osito", date: "20-12-12", price: 250.00, latitude: -12.04552, longitude: -76.95265)
            ]
            
            for place in places {
                annotations.append(PlaceCoordinate(name: place.name, coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)))
            }
        }
    
}
