//
//  ImagePicker.swift
//  SwiftUI_InstagramClone
//
//  Created by 김우성 on 2021/08/11.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image: UIImage?
    @Environment(\.presentationMode) var mode
    
    // UIViewController로 UIImagePickerViewController를 생성할 것이다.
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    // UIKit -> SwiftUI 로 맞게 View를 변경해줘야한다. 그래서 이 메소드를 사용한다.
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            guard let image = info[.originalImage] as? UIImage else { return }
            self.parent.image = image
            self.parent.mode.wrappedValue.dismiss()
        }
    }
}
