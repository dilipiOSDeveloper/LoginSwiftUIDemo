//
//  CustomDivider.swift
//  LoginSwiftUIDemo
//
//  Created by Dilip Tiwari on 25/05/23.
//

import SwiftUI

struct CustomDivider: View {
    let height: CGFloat = 1.5
    let color: Color = .black
    let opacity: Double = 0.3
    var body: some View {
        Group {
            Rectangle()
        }
        .padding()
        .frame(height: height)
        .foregroundColor(color)
        .opacity(opacity)
    }
}
