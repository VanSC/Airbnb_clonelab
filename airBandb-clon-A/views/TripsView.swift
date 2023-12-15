//
//  TripsView.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI
import MapKit
struct TripsView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -12.04552, longitude: -76.95265),
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
    @StateObject var tripViewModel = TripViewModel()
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: tripViewModel.annotations) {
                MapPin(coordinate: $0.coordinate)
                    
            }.ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack {
                        ZStack (alignment: .topLeading){
                            Image("item1")
                                .resizable()
                                .frame(width: 120, height: 120)
                            Image(systemName: "xmark.circle.fill")
                                .background()
                                .cornerRadius(100)
                                .padding(8)
                        }
                        VStack(alignment: .leading) {
                            HStack {
                                Text("La Calera, Colombia")
                                    .fontWeight(.semibold)
                                    .font(.caption)
                                Spacer()
                                Image(systemName: "heart")
                            }
                            Spacer()
                            HStack (alignment: .bottom) {
                                VStack{
                                    Text("Nov 19 - 24")
                                        .fontWeight(.light)
                                        .foregroundStyle(.gray)
                                        .font(.caption2)
                                    Text("S/ 268 night")
                                        .font(.caption)
                                }
                                Spacer()
                                HStack{
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                    Text("4.91")
                                        .font(.caption)
                                }
                            }
                        }
                        .padding(.vertical, 8)
                        .frame(maxHeight: 120)
                        Spacer()
                    }
                    .background(.white)
                    .cornerRadius(12)
                }
                .padding()
            }
        }
    }

    
   

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
