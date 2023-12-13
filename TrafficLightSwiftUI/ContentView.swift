//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Глеб Зобнин on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle: String = "Start"
    @State private var state: CurrentLight = .red
    
    @State private var isRed = 0.2
    @State private var isYellow = 0.2
    @State private var isGreen = 0.2
    var body: some View {
        VStack {
            LightView(color: .red, opacityValue: isRed)
            LightView(color: .yellow, opacityValue: isYellow)
            LightView(color: .green, opacityValue: isGreen)

            Button(action: {
                changeLight()
            }) {
                Text("\(buttonTitle)")
                    .font(.system(.title2))
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

extension ContentView {
    enum CurrentLight {
        case red, redYellow, green, yellow
    }
    
    private func changeLight() {
        buttonTitle = "Next"
        switch state {
        case .red:
            isRed = 1
            isYellow = 0.2
            isGreen = 0.2
            state = .redYellow
        case .redYellow:
            isRed = 1
            isYellow = 1
            isGreen = 0.2
            state = .green
        case .green:
            isRed = 0.2
            isYellow = 0.2
            isGreen = 1
            state = .yellow
        case .yellow:
            isRed = 0.2
            isYellow = 1
            isGreen = 0.2
            state = .red
        }
    }
}
