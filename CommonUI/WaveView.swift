//
//  WaveView.swift
//  SafeSnap
//
//  Created by Bhushan Borse DXC on 27/05/25.
//

import SwiftUI


import SwiftUI




struct WaveView: View {
    var body: some View {
        ZStack(alignment: .top) {
            BackgroundWave2()
                .fill(Color.teal.opacity(0.2))
                .frame(height: 200)
            
            BackgroundWave1()
                .fill(Color.teal)
                .frame(height: 180)
        }
    }
}

#Preview {
    WaveView()
}
