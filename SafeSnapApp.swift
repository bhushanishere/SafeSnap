//
//  SafeSnapApp.swift
//  SafeSnap
//
//  Created by Bhushan Borse on 03/04/25.
//

import SwiftUI

@main
struct SafeSnapApp: App {
    
    @State private var showSplash: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if self.showSplash {
                    WelcomeView()
                } else {
                    SplashScreen(isActive: $showSplash)
//                    LoginView()
                }
            }
        }
    }
}
