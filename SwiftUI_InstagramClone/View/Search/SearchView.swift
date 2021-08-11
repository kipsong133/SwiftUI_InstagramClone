//
//  SearchView.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/07/06.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    
    var body: some View {

        ScrollView {
            Text("Search")
            
            // Search bar
            SearchBar(text: $searchText)
                .padding()
             
            // grid view / user list view
//            PostGridView()
            UserListView()
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
