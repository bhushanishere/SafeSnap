//
//  TopWaveView.swift
//  SafeSnap
//
//  Created by Bhushan Borse on 19/06/25.
//

import SwiftUI

struct BackgroundWave1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        
        path.addLine(to: CGPoint(x: 0, y: rect.height * 0.65))
        
        path.addCurve(to: CGPoint(x: rect.width, y: rect.height * 0.35),
                      control1: CGPoint(x: rect.width * 0.25, y: rect.height * 0.95),
                      control2: CGPoint(x: rect.width * 0.75, y: rect.height * 0.1))
        
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.closeSubpath()
        
        return path
    }
}

struct BackgroundWave2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        
        path.addLine(to: CGPoint(x: 0, y: rect.height * 0.75))
        
        path.addCurve(to: CGPoint(x: rect.width, y: rect.height * 0.5),
                      control1: CGPoint(x: rect.width * 0.2, y: rect.height),
                      control2: CGPoint(x: rect.width * 0.8, y: 0))
        
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.closeSubpath()
        
        return path
    }
}

struct TopWaveView: View {
    var body: some View {
        ZStack(alignment: .top) {
            BackgroundWave2()
                .fill(Color.teal.opacity(0.2))
                .frame(height: 200)
            
            BackgroundWave1()
                .fill(Color.teal)
                .frame(height: 180)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TopWaveView()
}
