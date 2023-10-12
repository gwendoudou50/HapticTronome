//
//  Glow.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 12/10/2023.
//

import Foundation
import SwiftUI

extension View {
    func glow(color: Color = Color("White"), radius: CGFloat = 20) -> some View {
        self
            .overlay(self.blur(radius: radius / 2))
            .shadow(color: color, radius: radius / 1)
    }
}
