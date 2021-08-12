//
//  SwiftUI_InstagramCloneApp.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/07/06.
//

import SwiftUI
import Firebase

@main
struct SwiftUI_InstagramCloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
//            ContentView()
            LoginView()
        }
    }
}
