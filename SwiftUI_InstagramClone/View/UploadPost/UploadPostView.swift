//
//  UploadPostView.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/07/06.
//

import SwiftUI

struct UploadPostView: View {
    
    // UIImagePicker를 UIKit에서 가져온 후,
    @State private var selectedImage: UIImage?
    // SwiftUI의 Image 객체에 넣기 위한 프로퍼티
    @State var postImage: Image?
    @State var captionText = ""
    
    var body: some View {
        VStack {
            if postImage == nil { // 이미지를 선택하지 않은 경우
                
                Button(action: {}, label: {
                    Image("AddImage")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                        .overlay(
                            Text("Photo")
                                .font(.system(size: 25, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                                .offset(y: 75)
                        )
                })
                
            } else { // 이미지를 선택한 경우
                HStack(alignment: .top) {
                    Image("모야")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    
                    TextField("Enter your caption...", text: $captionText)
                }.padding()
                
                Button(action: {}, label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                })
                
            }
            
            Spacer()
        }
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
