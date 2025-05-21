//
//  WelcomeView.swift
//  SafeSnap
//
//  Created by Bhushan Borse on 03/04/25.
//

import SwiftUI

struct WelcomeView: View {
    let featureImages = ["appstore", "appstore", "appstore"]
    @State private var currentIndex = 0
    @State private var isAnimating = false
    @State private var navigateToLogin = false
    var body: some View {
        // Want to navigate to login screen on tap.
        NavigationStack {
            ZStack {
//                Color.appPrimary.ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [.white, .appTheme, .white]), startPoint: .top, endPoint: .bottom)

                VStack {
                    Spacer()
                    
                    TabView(selection: $currentIndex) {
                        ForEach(0..<featureImages.count, id: \.self) { index in
                            VStack {
                                Image(featureImages[index])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350, height: 350)
                                    .cornerRadius(20)
                                    .shadow(radius: 5)
                                    .scaleEffect(currentIndex == index ? 1.0 : 0.85)
                                    .opacity(currentIndex == index ? 1.0 : 0.5)
                                    .animation(.easeInOut(duration: 0.3), value: currentIndex)
                                    .tag(index)
                                
                                Text("Welcome to SafeSnap \(index + 1)")
                                    .padding()
                                    .font(.title)
                                    .foregroundColor(.white)                              
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .frame(height: 500)
                    
                    // Custom Dots
                    HStack(spacing: 10) {
                        ForEach(0..<featureImages.count, id: \.self) { index in
                            Circle()
                                .fill(currentIndex == index ? Color.appTheme : Color.black.opacity(0.4))
                                .frame(width: 10, height: 10)
                                .scaleEffect(currentIndex == index ? 1.3 : 1.0)
                                .animation(.easeInOut(duration: 0.2), value: currentIndex)
                        }
                    }
                    
                    Spacer()
                }
                .padding(.bottom, 40)
                
                // Button overlay anchored to bottom
                if currentIndex == featureImages.count - 1 {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(AngularGradient(colors: [.teal, .pink, .teal], center: .center, angle: .degrees(isAnimating ? 360 : 0)))
                            .frame(width: 80, height: 80)
                            .blur(radius: 20)
                            .allowsHitTesting(false)
                            .onAppear {
                                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                                    isAnimating.toggle()
                                }
                            }
                        
                        Circle()
                            .fill(Color.appTheme)
                            .frame(width: 80, height: 80)
                            .overlay(
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.appPrimary)
                                    .font(.title)
                            )
                            .onTapGesture {
                                navigateToLogin = true
                            }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom, 50)
                    .transition(.scale)
                    .animation(.spring(), value: currentIndex)
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationDestination(isPresented: $navigateToLogin) {
                LoginView()
            }
        }
       
    }
}

#Preview {
    WelcomeView()
}
