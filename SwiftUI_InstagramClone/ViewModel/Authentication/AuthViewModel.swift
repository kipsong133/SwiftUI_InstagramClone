//
//  AuthViewModel.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/08/12.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    func login() {
        print("Login")
    }
    
    func register() {
        print("regiser")
    }
    
    func signout() {
        print("signout")
    }
    
    func resetPassword() {
        print("reset")
    }
    
    func fetchUser() {
        print("fetchUser")
    }
}
