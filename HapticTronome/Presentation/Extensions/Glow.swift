//
//  Glow.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 12/10/2023.
//

import Foundation
import SwiftUI

extension View {
    func glow(color: Color = Color.appWhite, radius: CGFloat = 20, overlay: Bool = true) -> some View {
        self
            .overlay(self.blur(radius: overlay ? radius / 2 : 0))
            .shadow(color: color, radius: radius / 1)
    }
}
