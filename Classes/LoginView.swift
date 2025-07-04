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
    @State private var navigateToForgotPassword = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TopWaveView()
                Spacer()
                VStack {
                    Text("Welcome Back!")
                        .padding(.top, 120)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.teal.opacity(0.7))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Please login to your account.")
                        .foregroundColor(.teal.opacity(0.8))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Image("people")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 220)
                        .foregroundStyle(.white)
                        .shadow(color: .pink.opacity(0.5), radius: 10, x: 0, y: 5)
                                        
                    VStack(spacing: 15) {
                        TextField("Username", text: $userName)
                            .appTextFieldStyle(imageName: "person.fill")
                        
                        SecureField("Password", text: $password)
                            .appSecureFielddStyle(imageName: "lock.fill")
                        
                        HStack {
                            Spacer()
                            Text("Forgot Password?")
                                .padding(.top, 5)
                                .foregroundColor(.teal)
                                .fontWeight(.thin)
                                .font(.system(size: 15))
                                .onTapGesture {
                                    navigateToForgotPassword = true
                                }
                        }
                        
                        Button(action: {
                            // Handle login action
                           
                        }) {
                            Text("Login")
                                .appButtonTextStyle()
                        }
                        .appButtonStyle()
                    }
                    
                    Spacer()
                    Text("Don't have an account?  Sign Up!")
                        .padding(.bottom, 5)
                        .foregroundColor(.teal)
                        .fontWeight(.medium)
                        .onTapGesture {
                            // Handle sign up action
                            navigateToSignUp = true
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
        .navigationDestination(isPresented: $navigateToForgotPassword) {
            // Navigate to Forgot Password view
            ForgotPasswordView()
        }
    }
}

#Preview {
    LoginView()
}
