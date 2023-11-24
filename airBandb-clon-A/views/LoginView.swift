//
//  LoginView.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 24/11/23.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        VStack {
                    Image("logo_splash")
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack(spacing: 30) {
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.black, lineWidth: 1)
                            )
                        SecureField("Password", text: $password)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.black, lineWidth: 1)
                            )
                        Button {
                            loginViewModel.signUp(email: email, password: password)
                        } label: {
                            Spacer()
                            Text("Sign in")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                                .font(.headline)
                            Spacer()
                        }
                        .padding()
                        .background(Color("airbnbPrimary"))
                        .cornerRadius(8)
                        
                    }.padding(.top, 50)
                    
                    Spacer()
                }
                .padding()
        //.padding(.top, 30)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
