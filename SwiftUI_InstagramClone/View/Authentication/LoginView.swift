//
//  LoginView.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/08/12.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]),
                                            startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("Instagram_logo_white")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)
                    
                    // email field
                    
                    // password field
                    
                    // forget password
                    
                    // sign in
                    
                    // go to sign up
                    
                    Spacer()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
