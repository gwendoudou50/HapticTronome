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
    }
}

#Preview {
    SettingsWidgetButton()
}
