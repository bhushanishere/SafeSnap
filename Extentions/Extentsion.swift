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
    func customTextFieldStyle(imageName: String? = "") -> some View {
        self.safeAreaInset(edge: .leading) { Image(systemName: imageName ?? "").foregroundStyle(.teal) }
            .padding(.all)
            .foregroundStyle(.gray)
            .background(.thickMaterial, in: .rect(cornerRadius: 10))
    }
}

extension SecureField {
    func customSecureFielddStyle(imageName: String? = "") -> some View {
        self.safeAreaInset(edge: .leading) { Image(systemName: imageName ?? "").foregroundStyle(.teal) }
            .padding(.all)
            .foregroundStyle(.gray)
            .background(.ultraThinMaterial, in: .rect(cornerRadius: 10))
    }
}

extension Text {
    func customTextStyle() -> some View {
        self.padding(.all)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.appTheme)
            .frame(maxWidth: .infinity, maxHeight: 50)
    }
}

extension Button {
    func customButtonStyle() -> some View {
        self.buttonStyle(.bordered)
            .background(.thinMaterial, in: .rect(cornerRadius: 10))
    }
}
    
    

