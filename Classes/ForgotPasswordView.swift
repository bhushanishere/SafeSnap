//
//  ForgotPasswordView.swift
//  SafeSnap
//
//  Created by Bhushan Borse DXC on 19/06/25.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack(alignment: .top) {
                    TopWaveView()
                    VStack (spacing: 10) {
                        Text("Forgot Password?")
                            .padding(.top, 120)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.teal.opacity(0.7))
                            .frame(maxWidth: .infinity, alignment: .center)

                        Text("Enter your email to reset your password.")
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
                            Spacer()
                            TextField("Email", text: Binding.constant(""))
                                .appTextFieldStyle(imageName: "envelope.fill")
                            
                            Button(action: {
                                // Handle login action
                            }) {
                                Text("Reset Password")
                                    .appButtonTextStyle()
                            }
                            .appButtonStyle()
                        }
                        .padding()
                    }
                    .padding(35)
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ForgotPasswordView()
}
