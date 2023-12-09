//
//  Shape.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 04/12/2023.
//

import Foundation
import SwiftUI

extension Circle {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: CGFloat = 1) -> some View {
        self
            .stroke(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}
