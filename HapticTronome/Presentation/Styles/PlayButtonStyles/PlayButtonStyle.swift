//
//  ButtonStyle.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import SwiftUI

struct PlayButtonStyle: ButtonStyle {
    
    @ScaledMetric var horizontalPadding = UIScreen.main.bounds.width * 0.095
    @ScaledMetric var verticalPadding = UIScreen.main.bounds.width * 0.06
    var isPressed: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        if (!isPressed) {
            configuration.label
                .font(.body)
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, verticalPadding)
                .foregroundColor(Color.appPrimary)
                .background(
                    ZStack {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .foregroundStyle(.linearGradient(AppConstants().playButtonGradient, startPoint: .top, endPoint: .bottom))
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.appBlack, lineWidth: 4)
                                    .shadow(color: Color.appBlack.opacity(0.14), radius: 1, x: 0, y: 1)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            )
                    }
                )
                .shadow(color: Color.appBlack.opacity(0.24), radius: 8, x: 0, y: 6)
                .shadow(color: Color.appWhite.opacity(0.14), radius: 1, x: 0, y: -1)
        } else {
            configuration.label
                .font(.body)
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, verticalPadding)
                .foregroundColor(Color.appWhite)
                .glow(color: Color.appWhite, radius: 20)
                .background(
                    ZStack {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color.appGrey)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.appBlack, lineWidth: 4)
                                    .shadow(color: Color.appBlack.opacity(0.40), radius: 1, x: 0, y: -1)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
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
            Image(systemName: "play.fill")
        }.buttonStyle(PlayButtonStyle(isPressed: false))
        
        Button(action: {}) {
            Image(systemName: "play.fill")
        }.buttonStyle(PlayButtonStyle(isPressed: true))
    }
    .buttonStyle(PlayButtonStyle())
    .previewLayout(.sizeThatFits)
    .padding()
}
