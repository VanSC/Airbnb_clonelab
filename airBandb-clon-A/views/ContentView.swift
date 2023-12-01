//
//  ContentView.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 3/11/23.
//
//zstack - apilar imagenes
//vstack - vista vertical
//hstack - vista horizontal

import SwiftUI

struct ContentView: View {
    @StateObject var contentViewModel = ContentViewModel()

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing:40) {
                    Category(icon: "ovni", text: "OMG!")
                    Category(icon: "beaches", text: "Beaches")
                    Category(icon: "home", text: "Tiny homes")
                    Category(icon: "golf", text: "Golfing")
                    Category(icon: "landscape", text: "Amazing")
                }
            }
            .padding()
            Divider()
            List(contentViewModel.airbnbs.places, id: \.name) { place in
                VStack {
                    Card(image: place.image_url, name: place.name, rating: place.rating, date: place.date, price: place.price)
                }
                
            }.task {
                await contentViewModel.loadData()
            }
             .listStyle(.inset)
             .scrollIndicators(.hidden)
             .padding([.trailing, .leading])
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
