//
//  UpperCirclePotardWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 02/11/2023.
//

import SwiftUI

struct UpperCirclePotardWidget: View {
    var body: some View {
        Circle()
            .fill(
                .shadow(
                    .inner(
                        color: .white.opacity(0.25),
                        radius: 4,
                        x: 0,
                        y: 6
                    )
                )
                .shadow(
                    .inner(
                        color: .black.opacity(0.25),
                        radius: 4,
                        x: 0,
                        y: -6
                    )
                )
                .shadow(
                    .drop(
                        color: .black.opacity(0.25),
                        radius: 5,
                        x: 0,
                        y: 9
                    )
                )
            )
            .strokeBorder(.black, lineWidth: 6)
            .foregroundColor(.appDarkGrey)
    }
}

#Preview {
    UpperCirclePotardWidget()
        .padding()
}
