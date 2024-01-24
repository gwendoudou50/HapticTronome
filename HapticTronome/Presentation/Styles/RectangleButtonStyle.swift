//
//  ButtonStyle.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import SwiftUI

struct RectangleButtonStyle: ButtonStyle {
    
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
                        BackgroundRoundedRectangleWidget(cornerRadius: 12)
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .shadow(color: Color.appBlack.opacity(1), radius: 6, x: 0, y: 2)
                            .shadow(color: Color.appWhite.opacity(0.2), radius: 4, x: 0, y: -1)
                            .foregroundStyle(.linearGradient(AppConstants().playButtonGradient, startPoint: .top, endPoint: .bottom))
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.appBlack, lineWidth: 4)
                                    .shadow(color: Color.appBlack.opacity(0.14), radius: 1, x: 0, y: 1)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            )
                    }
                )
        } else {
            configuration.label
                .font(.body)
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, verticalPadding)
                .foregroundColor(Color.appWhite)
                .glow(color: Color.appWhite, radius: 20)
                .background(
                    ZStack {
                        BackgroundRoundedRectangleWidget(cornerRadius: 12)
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color.appGrey)
                            .shadow(color: Color.appBlack.opacity(1), radius: 6, x: 0, y: 2)
                            .shadow(color: Color.appWhite.opacity(0.2), radius: 4, x: 0, y: -1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.appBlack, lineWidth: 4)
                                    .shadow(color: Color.appBlack.opacity(0.40), radius: 1, x: 0, y: -1)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            )
                    }
                )
        }
        
    }
}

#Preview {
    HStack {
        Button(action: {}) {
            Image(systemName: "play.fill")
        }.buttonStyle(RectangleButtonStyle(isPressed: false))
        
        Button(action: {}) {
            Image(systemName: "play.fill")
        }.buttonStyle(RectangleButtonStyle(isPressed: true))
    }
    .previewLayout(.sizeThatFits)
    .padding()
}
