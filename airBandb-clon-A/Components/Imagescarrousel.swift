//
//  Imagescarrousel.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 24/11/23.
//

import SwiftUI

struct Imagescarrousel: View {
    var body: some View {
        AutoScroller(imageNames: ["bedroom", "bedroom2", "bedroom3", "livingroom"])
    }
    struct AutoScroller: View {
        var imageNames: [String]
        let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
        
        // Step 3: Manage Selected Image Index
        @State private var selectedImageIndex: Int = 0

        var body: some View {
            ZStack {
                // Step 4: Background Color
                Color.secondary
                    .ignoresSafeArea()

                // Step 5: Create TabView for Carousel
                TabView(selection: $selectedImageIndex) {
                    // Step 6: Iterate Through Images
                    ForEach(0..<imageNames.count, id: \.self) { index in
                        ZStack(alignment: .topLeading) {
                            // Step 7: Display Image
                            Image("\(imageNames[index])")
                                .resizable()
                                .tag(index)
                                .frame(width: 400, height: 420)
                                .overlay(
                                                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(1)]), startPoint: .top, endPoint: .bottom)
                                            )
                        }
                        
                        .shadow(radius: 20) // Step 9: Apply Shadow
                    }
                }
                .frame(height: 400) // Step 10: Set Carousel Height
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Step 11: Customize TabView Style
                .ignoresSafeArea()

                // Step 12: Navigation Dots
                HStack {
                    ForEach(0..<imageNames.count, id: \.self) { index in
                        // Step 13: Create Navigation Dots
                        Capsule()
                            .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                            .frame(width: 35, height: 8)
                            .onTapGesture {
                                // Step 14: Handle Navigation Dot Taps
                                selectedImageIndex = index
                            }
                    }
                    .offset(y: 130) // Step 15: Adjust Dots Position
                }
            }
            .onReceive(timer) { _ in
                // Step 16: Auto-Scrolling Logic
                withAnimation(.default) {
                    selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
                }
            }
        }
    }
}

struct Imagescarrousel_Previews: PreviewProvider {
    static var previews: some View {
        Imagescarrousel()
    }
}
