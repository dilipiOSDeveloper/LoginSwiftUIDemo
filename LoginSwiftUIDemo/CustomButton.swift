//
//  CustomButton.swift
//  LoginSwiftUIDemo
//
//  Created by Dilip Tiwari on 25/05/23.
//

import SwiftUI
//
//struct CustomButton: View {
//    var body: some View {
//        Bu
//    }
//}
//
//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButton()
//    }
//}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
            .frame(maxWidth: .infinity,minHeight: 55)
            .background(.blue)
            .foregroundColor(Color.white)
            .font(.caption)
            .clipShape(Capsule())
            .cornerRadius(12)
            .padding(.top)
            .opacity(configuration.isPressed ? 0.7 : 1)
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .animation(.easeInOut(duration: 0.2))
    }
}
