//
//  AuthViewModel.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/08/12.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    static let shared = AuthViewModel()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser // 현재 유자가 있는지 확인한다.
    }
    
    func login() {
        print("Login")
    }
    
    func register(withEmail email: String, password: String) {
        // 사용자 Email과 password를 파이어베이스에 등록한다.
        Auth.auth().createUser(withEmail: email,
                               password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            print("Successfully registered user...")
        }
    }
    
    func signout() {
        print(#function, "in ", #file)
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword() {
        print("reset")
    }
    
    func fetchUser() {
        print("fetchUser")
    }
}
