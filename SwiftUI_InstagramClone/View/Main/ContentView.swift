//
//  ContentView.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/07/06.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        
        Group {
            // - true : 로그인된 계정이 없는 경우
            // - false: 로그인된 계정이 있는 경우
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
