//
//  UserCell.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/08/11.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            // image
            Image("모야")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            // VStack -> username, fullname
            VStack(alignment: .leading) {
                Text("모야")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("슈나우저")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
