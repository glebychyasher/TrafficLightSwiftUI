//
//  LightView.swift
//  TrafficLightSwiftUI
//
//  Created by Глеб Зобнин on 13.12.2023.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let opacityValue: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .opacity(opacityValue)
        .padding()
    }
}

#Preview {
    LightView(color: .red, opacityValue: 0.5)
}
