//
//  Card.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 3/11/23.
//

import SwiftUI

struct Card: View {
    var image: String
    var name: String
    var rating: Double
    var date: String
    var price: Double
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AsyncImage(url: URL(string: image) )
                .frame(width: 365, height: 323)
                .cornerRadius(12.0)
            
            HStack {
                Text(name)
                    .fontWeight(.bold)
                Text("Cusco")
                    .fontWeight(.bold)
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                    Text(String(rating))
                }
            }
            Text("Professional Host")
                .fontWeight(.light)
                .foregroundColor(.gray)
            Text(date)
                .fontWeight(.light)
                .foregroundColor(.gray)
            Text("$ \(String(price))")
                .fontWeight(.semibold)
        }
        .padding()
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(image: "item1", name: "Cusco", rating: 5, date: "12-12-11", price: 54)
    }
}
