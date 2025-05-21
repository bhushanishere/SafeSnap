//
//  LoginView.swift
//  SafeSnap
//
//  Created by Bhushan Borse on 18/05/25.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var navigateToSignUp = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.appPrimary.ignoresSafeArea()
                LinearGradient.appGreenGradient
                VStack {
                    Text("Sign In")
                        .padding(.top, 60)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.appPrimary)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Welcome back! Please login to your account.")
                        .padding(.top, 5)
                        .foregroundColor(.appPrimary)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        TextField("Username", text: $userName)
                            .safeAreaInset(edge: .leading) { Image(systemName: "person.fill").foregroundStyle(.white) }
                            .padding(.all)
                            .foregroundStyle(.white)
                            .background(.ultraThinMaterial, in: .rect(cornerRadius: 10))
                        
                        SecureField("Password", text: $password)
                            .safeAreaInset(edge: .leading) { Image(systemName: "lock.fill")  .foregroundStyle(.white) }
                            .padding(.all)
                            .foregroundStyle(.white)
                            .background(.ultraThinMaterial, in: .rect(cornerRadius: 10))
                        
                        HStack {
                            Spacer()
                            Text("Forgot Password?")
                                .padding(.horizontal, 10)
                                .foregroundColor(.appPrimary)
                                .fontWeight(.semibold)
                                .onTapGesture {
                                    // Handle forgot password action
                                }
                        }
                        
                        Button(action: {
                            // Handle login action
                            navigateToSignUp = true
                        }) {
                            Text("Login")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.appTheme)
                                .frame(maxWidth: .infinity, maxHeight: 50)
                        }
                        .buttonStyle(.bordered)
                        .background(.thinMaterial, in: .rect(cornerRadius: 10))
                    }
                    
                    Spacer()
                    
                    Text("Don't have an account?  Sign Up!")
                        .padding(.bottom, 5)
                        .foregroundColor(.appPrimary)
                        .fontWeight(.semibold)
                        .onTapGesture {
                            // Handle sign up action
                        }
                }
                .padding(35)
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarBackButtonHidden(true)
        }
        .navigationDestination(isPresented: $navigateToSignUp) {
            // Navigate to Sign Up view
            SignUpView()
        }
    }
}

#Preview {
    LoginView()
}
