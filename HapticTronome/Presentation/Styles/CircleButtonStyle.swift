//
//  CircleButtonStyle.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 30/12/2023.
//

//
//  ButtonStyle.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import SwiftUI

struct CircleButtonStyle: ButtonStyle {
    
    @ScaledMetric var padding = UIScreen.main.bounds.width * 0.05
    var isPressed: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        if (!isPressed) {
            configuration.label
                .font(.body)
                .padding()
//                .padding(padding)
                .foregroundColor(Color.appPrimary)
                .background(
                    ZStack {
                        Circle()
                            .foregroundStyle(.linearGradient(AppConstants().playButtonGradient, startPoint: .top, endPoint: .bottom))
                            .overlay(
                                Circle()
                                    .stroke(Color.appBlack, lineWidth: 4)
                                    .shadow(color: Color.appBlack.opacity(0.14), radius: 1, x: 0, y: 1)
                                    .clipShape(Circle())
                            )
                    }
                )
                .shadow(color: Color.appBlack.opacity(0.24), radius: 8, x: 0, y: 6)
                .shadow(color: Color.appWhite.opacity(0.14), radius: 1, x: 0, y: -1)
        } else {
            configuration.label
                .font(.body)
                .padding(padding)
                
                .foregroundColor(Color.appWhite)
                .glow(color: Color.appWhite, radius: 20)
                .background(
                    ZStack {
                        Circle()
                            .fill(Color.appGrey)
                            .overlay(
                                Circle()
                                    .stroke(Color.appBlack, lineWidth: 4)
                                    .shadow(color: Color.appBlack.opacity(0.40), radius: 1, x: 0, y: -1)
                                    .clipShape(Circle())
                            )
                            .shadow(color: Color.appWhite.opacity(0.14), radius: 1, x: 0, y: -1)
                    }
                )
            
        }
        
    }
}

#Preview {
    HStack {
        Button(action: {}) {
            Image(systemName: "gearshape.fill")
        }
        .buttonStyle(CircleButtonStyle(isPressed: false))
        
        Button(action: {}) {
            Image(systemName: "gearshape.fill")
        }
        .buttonStyle(CircleButtonStyle(isPressed: true))
    }
    .previewLayout(.sizeThatFits)
    .padding()
}

