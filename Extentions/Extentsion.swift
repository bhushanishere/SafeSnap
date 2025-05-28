//
//  Extentsion.swift
//  SafeSnap
//
//  Created by Bhushan Borse on 03/04/25.
//

import Foundation
import SwiftUI

extension Color {
    static let oldPrimaryColor = Color(UIColor.systemIndigo)
    static let bgColor = Color("AppBGColor")
    static let primaryColor = Color("AppPrimaryColor")
}

extension LinearGradient {
    static var appGreenGradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.appTheme, .appTheme, .green]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

extension TextField {
    func appTextFieldStyle(imageName: String? = "") -> some View {
        self.safeAreaInset(edge: .leading) { Image(systemName: imageName ?? "").foregroundStyle(.teal) }
            .padding(.all)
            .frame(maxHeight: 45)
            .foregroundStyle(.gray)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.teal, lineWidth: 0.5)
            )
            .background(.thickMaterial, in: .rect(cornerRadius: 10))
    }
}

extension SecureField {
    func appSecureFielddStyle(imageName: String? = "") -> some View {
        self.safeAreaInset(edge: .leading) { Image(systemName: imageName ?? "").foregroundStyle(.teal) }
            .padding(.all)
            .frame(maxHeight: 45)
            .foregroundStyle(.gray)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.teal, lineWidth: 0.5)
            )
            .background(.ultraThinMaterial, in: .rect(cornerRadius: 10))
    }
}

extension Text {
    func appTextStyle() -> some View {
        self.padding(.all)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.appTheme)
            .frame(maxWidth: .infinity, maxHeight: 50)
    }
    
    func appButtonTextStyle() -> some View {
        self.padding(.all)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.teal)
            .frame(maxWidth: .infinity, maxHeight: 45)
    }
}

extension Button {
    func appButtonStyle() -> some View {
        self.buttonStyle(.bordered)
            .frame(height: 45)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.teal, lineWidth: 0.5)
            )
            .background(.thinMaterial, in: .rect(cornerRadius: 10))
    }
}
    
    

