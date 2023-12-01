//
//  AppState.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 24/11/23.
//

import Foundation

class AppState: ObservableObject {
    
    static let shared = AppState()
    
    enum Views {
        case login
        case main
    }
    
    @Published var currentscreen: Views = .main
}
