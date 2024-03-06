//
//  SettingsWidgetButton.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 30/12/2023.
//

import SwiftUI

struct SettingsWidgetButton: View {
    @ScaledMetric var padding = UIScreen.main.bounds.width * 0.05
    var body: some View {
        Image(systemName: "gearshape.fill")
            .font(.body)
            .padding()
            .foregroundColor(Color.appPrimary)
            .background(
                ZStack {
                    BackgroundCircleWidget()
                    Circle()
                        .shadow(color: Color.appBlack.opacity(1), radius: 6, x: 0, y: 2)
                        .shadow(color: Color.appWhite.opacity(0.2), radius: 4, x: 0, y: -1)
                        .foregroundStyle(.linearGradient(AppConstants.playButtonGradient, startPoint: .top, endPoint: .bottom))
                        .overlay(
                            Circle()
                                .stroke(Color.appBlack, lineWidth: 4)
                                .shadow(color: Color.appBlack.opacity(0.14), radius: 1, x: 0, y: 1)
                                .clipShape(Circle())
                        )
                }
            )
    }
}

#Preview {
    SettingsWidgetButton()
}
