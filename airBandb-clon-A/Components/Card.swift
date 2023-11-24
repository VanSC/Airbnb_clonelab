//
//  Card.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 3/11/23.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image("item1")
                .frame(width: 342, height: 323)
                .cornerRadius(12.0)
            
            HStack {
                Text("Haringen NetherLands")
                    .fontWeight(.bold)
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.5")
                }
            }
            Text("Professional Host")
                .fontWeight(.light)
                .foregroundColor(.gray)
            Text("18-23 Dec")
                .fontWeight(.light)
                .foregroundColor(.gray)
            Text("$1,065 total")
                .fontWeight(.semibold)
        }
        .padding()
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
