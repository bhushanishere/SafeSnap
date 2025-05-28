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
                        .appTextFieldStyle()
                    
                    TextField("Last Name", text: $lastName)
                        .appTextFieldStyle()
                    
                    TextField("Phone Number", text: $phoneNumber)
                        .appTextFieldStyle()
                    
                    TextField("Email", text: $email)
                        .appTextFieldStyle()
                    
                    SecureField("Password", text: $password)
                        .appSecureFielddStyle()

                    
                    Spacer()
                    Button(action: {
                        // Handle sign up action
                    }) {
                        Text("Sign Up")
                            .appTextStyle()
                    }
                    .appButtonStyle()
                }
                .padding(.top, 30)
            }
            .padding(35)
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    SignUpView()
}
