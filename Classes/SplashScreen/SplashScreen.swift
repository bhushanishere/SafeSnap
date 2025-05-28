//
//  SplashScreen.swift
//  SafeSnap
//
//  Created by Bhushan Borse on 04/04/25.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var scale = 0.2
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .fill(Color.appPrimary)
            }
            
            VStack {
                Spacer()
                Circle()
                    .fill(Color.appTheme.opacity(0.2))
                    .frame(width: 700, height: 700)
                    .overlay {
                        Image("flyingBird")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .foregroundStyle(.white)
                            .shadow(color: .pink.opacity(0.7), radius: 10, x: 0, y: 5)
                    }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SplashScreen(isActive: .constant(false))
}
