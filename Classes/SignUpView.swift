//
//  SignUpView.swift
//  SafeSnap
//
//  Created by Bhushan Borse on 07/05/25.
//


import SwiftUI

struct SignUpView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phoneNumber: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient.appGreenGradient
            VStack {
                Text("Sign Up")
                    .padding(.top, 80)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.appPrimary)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Create a new account")
                    .padding(.top, 10)
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .frame(maxWidth: .infinity, alignment: .center)
                Spacer()
                VStack(spacing: 20) {
                    TextField("First Name", text: $firstName)
                        .customTextFieldStyle()
                    
                    TextField("Last Name", text: $lastName)
                        .customTextFieldStyle()
                    
                    TextField("Phone Number", text: $phoneNumber)
                        .customTextFieldStyle()
                    
                    TextField("Email", text: $email)
                        .customTextFieldStyle()
                    
                    SecureField("Password", text: $password)
                        .customSecureFielddStyle()

                    
                    Spacer()
                    Button(action: {
                        // Handle sign up action
                    }) {
                        Text("Sign Up")
                            .customTextStyle()
                    }
                    .customButtonStyle()
                }
                .padding(.top, 30)
            }
            .padding(35)
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SignUpView()
}
