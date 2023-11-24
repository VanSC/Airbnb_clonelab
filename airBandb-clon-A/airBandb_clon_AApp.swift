//
//  airBandb_clon_AApp.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 3/11/23.
//

import SwiftUI

@main
struct airBandb_clon_AApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var appState: AppState = .shared
    var body: some Scene {
        WindowGroup {
            switch appState.currentscreen {
            case .login:
                LoginView()
            case .main:
                MainView()
            }
            //MainView()
        }
    }
}
