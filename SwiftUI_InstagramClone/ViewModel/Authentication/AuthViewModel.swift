//
//  AuthViewModel.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/08/12.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser // 현재 유자가 있는지 확인한다.
    }
    
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
