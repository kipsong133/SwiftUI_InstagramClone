//
//  NotificationCell.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/08/11.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = true
    
    var body: some View {
        
        HStack {
            Image("모야")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            Text("Mooya").font(.system(size: 14, weight: .semibold)) + Text("  liked one onf your posts.")
                .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("모야")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button(action: {}, label: {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
            
            
            
        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
