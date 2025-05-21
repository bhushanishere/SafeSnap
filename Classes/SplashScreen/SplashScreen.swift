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
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, .appTheme, .white]), startPoint: .top, endPoint: .bottom)
            VStack {
                VStack {
                    Image("appstore")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .foregroundStyle(.white)
                    
                }.scaleEffect(scale)
                    .onAppear{
                        withAnimation(.easeIn(duration: 0.7)) {
                            self.scale = 0.9
                        }
                    }
            }.onAppear {
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
