//
//  ShadowModifier.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 07/12/2023.
//

import Foundation
import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: .white, radius: 8, x: -8, y: -8)
            .shadow(color: .black, radius: 8, x: 8, y: 8)
    }
}

struct InnerShadowModifier: ViewModifier {
    @State var firstColor: Color = .white
    @State var secondColor: Color = .black
    @State var lineWidth: CGFloat = 4
    @State var radius: CGFloat = 4
    @State var firstX: CGFloat = 0
    @State var firstY: CGFloat = -4
    @State var secondX: CGFloat = 0
    @State var secondY: CGFloat = 4
    @State var firstGradientStartPoint: UnitPoint = .bottom
    @State var firstGradientEndPoint: UnitPoint = .center
    @State var secondGradientStartPoint: UnitPoint = .top
    @State var secondGradientEndPoint: UnitPoint = .center
    func body(content: Content) -> some View {
        content
            .overlay(
                Circle()
                    .fill(Color.clear)
                    .overlay(
                        Circle()
                            .stroke(
                                firstColor.opacity(0.5),
                                lineWidth: lineWidth
                            )
                            .blur(radius: radius)
                            .offset(
                                x: firstX,
                                y: firstY
                            )
                            .mask(
                                Circle()
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(
                                                colors: [firstColor, .clear]
                                            ),
                                            startPoint: firstGradientStartPoint,
                                            endPoint: firstGradientEndPoint
                                        )
                                    )
                            )
                    )
                    .overlay(
                        Circle()
                            .stroke(
                                secondColor.opacity(0.5),
                                lineWidth: lineWidth
                            )
                            .blur(radius: radius)
                            .offset(
                                x: secondX,
                                y: secondY
                            )
                            .mask(
                                Circle()
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(
                                                colors: [secondColor, .clear]
                                            ),
                                            startPoint: secondGradientStartPoint,
                                            endPoint: secondGradientEndPoint
                                        )
                                    )
                            )
                    )
            )
    }
}
