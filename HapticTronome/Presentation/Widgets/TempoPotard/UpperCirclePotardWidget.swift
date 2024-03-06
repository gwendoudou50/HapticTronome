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

            .fill(.appDarkGrey, strokeBorder: .black, lineWidth: 4)
            .shadow(
                color: .black.opacity(0.5),
                radius: 5,
                x: 0,
                y: 9
            )
            .modifier(
                InnerShadowModifier(
                    lineWidth: 13,
                    radius: 8,
                    firstX: 0,
                    firstY: -6,
                    secondX: 0,
                    secondY: 6,
                    firstGradientStartPoint: .top,
                    firstGradientEndPoint: .center,
                    secondGradientStartPoint: .bottom,
                    secondGradientEndPoint: .center
                )
            )
    }
}

#Preview {
    UpperCirclePotardWidget()
        .padding()
}
