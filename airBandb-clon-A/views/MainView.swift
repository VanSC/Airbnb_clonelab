//
//  MainView.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI

struct MainView: View {
    
    //cambiar el color del tabView
    init() {
           UITabBar.appearance().backgroundColor = UIColor.white
       }
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    TapItem(icon: "magnifing", text: "Explore")
                }
            Tripsbook()
                .tabItem {
                    TapItem(icon: "heart", text: "Wishlist")
                }
            TripsView()
                .tabItem {
                    TapItem(icon: "logo-icon", text: "Trips")
                }
            InboxView()
                .tabItem {
                    TapItem(icon: "inbox", text: "Inbox")                }
            ProfileView()
                .tabItem {
                    TapItem(icon: "profile", text: "Profile")
                }
        }
        .accentColor(Color("airbnbPrimary"))
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
