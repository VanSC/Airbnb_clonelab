//
//  TapItem.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 10/11/23.
//

import SwiftUI

struct TapItem: View {
    var icon: String
    var text: String
    var body: some View {
        VStack {
            Text(text)
            Image(icon).renderingMode(.template)
        }
    }
}

struct TapItem_Previews: PreviewProvider {
    static var previews: some View {
        TapItem(icon: "inbox", text: "Inbox")
    }
}
