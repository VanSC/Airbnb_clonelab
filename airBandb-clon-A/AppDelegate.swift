//
//  AppDelegate.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 24/11/23.
//

import Foundation
import SwiftUI
import FirebaseCore
/*https:/github.com/firebase/firebase-ios-sdk*/

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

