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
        NavigationStack {
            ZStack(alignment: .top) {
                VStack {
                    TopWaveView()
                    VStack {
                        Text("Sign Up")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.teal.opacity(0.7))
                            .frame(maxWidth: .infinity, alignment: .center)
                        Text("Create a new account")
                            .padding()
                            .font(.title3)
                            .foregroundColor(.teal.opacity(0.7))
                            .fontWeight(.light)
                            .frame(maxWidth: .infinity, alignment: .center)
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
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding()
                }
            }
            .edgesIgnoringSafeArea(.all)
//            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    SignUpView()
}
