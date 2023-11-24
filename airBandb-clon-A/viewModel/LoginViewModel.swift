//
//  LoginViewModel.swift
//  airBandb-clon-A
//
//  Created by MAC45 on 24/11/23.
//

import Foundation
import FirebaseAuth
class LoginViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password){
            response, error in
             ///se maneja el error
            if error != nil {
                print(error)
                return
            }
            self.appState.currentscreen = .main
        }
    }
}
