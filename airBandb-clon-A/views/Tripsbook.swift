//
//  Tripsbook.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 24/11/23.
//

import SwiftUI

struct Tripsbook: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .topLeading){
                    Imagescarrousel()
                    VStack (alignment: .leading) {
                        HStack{
                            Image(systemName: "x.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "square.and.arrow.up.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.white)
                            
                        }
                        .padding(.top, 50)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        Text("You're all set \n for Manchester")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading, 35)
                            .padding(.top, 30)
                    }
                }
                VStack{
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Check in")
                                .fontWeight(.bold)
                                .padding(.bottom, 6)
                            Text("Mon, Feb 13, 2023")
                                .padding(.bottom, 0.5)
                            Text("1:00PM")
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Check out")
                                .fontWeight(.bold)
                                .padding(.bottom, 6)
                            Text("Tue, Feb 14, 2023")
                                .padding(.bottom, 0.5)
                            Text("12:00PM")
                        }
                    }
                    .padding(30)
                    VStack {
                        Divider()
                        HStack {
                            Image(systemName: "bubble.left.fill")
                            Text("Message host")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding()
                        Divider()
                        HStack {
                            Image(systemName: "rectangle.inset.filled.and.person.filled")
                            Text("Show listing")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding()
                    }
                    .padding()
                }
                Divider()
                VStack (alignment: .leading){
                    Text("Reservations details")
                        .padding(.bottom, 30)
                        .font(.title)
                        .fontWeight(.bold)
                    HStack{
                        VStack (alignment: .leading){
                            Text("Who's coming")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.bottom, 4)
                            Text("1 guest")
                        }
                        Spacer()
                        Image("perfil")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(100)
                    }
                    .padding(.bottom, 15)
                    Divider()
                    VStack (alignment: .leading){
                        Text("Confirmation code")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.bottom, 4)
                        Text("HBACDEFQAZKC")
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    Divider()
                    VStack (alignment: .leading){
                        HStack(spacing: 1) {
                            Text("Your booking is protected by ")
                            Text("air")
                                .fontWeight(.bold)
                                .foregroundColor(Color("airbnbPrimary"))
                            Text("cover")
                                .fontWeight(.bold)
                        }
                        .padding(.bottom, 4)
                        Text("Learn more")
                            .fontWeight(.bold)
                            .underline()
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    
                    Divider()
                    VStack (alignment: .leading){
                        Text("Cancelation policy")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.bottom, 4)
                        Text("Free cancellation before 1:00PM on Feb 12. After that, the reservation is non- \nrefundable ")
                            .padding(.bottom, 4)
                        Text("Learn more")
                            .fontWeight(.bold)
                            .underline()
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    VStack {
                        Divider()
                        HStack {
                            Image(systemName: "bubble.left.fill")
                            Text("Cancel reservation")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        Divider()
                        HStack {
                            Image(systemName: "network")
                            Text("Get a PDF for visa purpose")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        Divider()
                        HStack {
                            Image(systemName: "entry.lever.keypad.fill")
                            Text("Add to wallet")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        Divider()
                        HStack {
                            Image(systemName: "wallet.pass.fill")
                            Text("Get receipt")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                    
                }
                .padding(30)
                
            }
            .listRowSeparator(.hidden)
        }
        .ignoresSafeArea()
    }
}

struct Tripsbook_Previews: PreviewProvider {
    static var previews: some View {
        Tripsbook()
    }
}
