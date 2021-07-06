//
//  MainTabView.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/07/06.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem { 
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem { 
                    Image(systemName: "magnifyingglass")
                }
            
            UploadPostView()
                .tabItem { 
                    Image(systemName: "plus.square")
                }
            
            NotificationsView()
                .tabItem { 
                    Image(systemName: "heart")
                }
            
            ProfileView()
                .tabItem { 
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
