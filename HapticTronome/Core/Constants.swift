//
//  constants.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import Foundation
import SwiftUI

struct AppConstants {
    static let playButtonGradient = Gradient(colors: [Color.appButtonGradientLight, Color.appButtonGradientDark])
    static let  underWidgetBorderGradient = Gradient(
        colors: [Color.black.opacity(0.1), Color.white.opacity(0.30)]
    )
    
    static let  hapticFileName = "HapticClick"
    static let  englishPrivacyPolicyUrl = "https://www.iubenda.com/privacy-policy/20234861"
    static let  frenchPrivacyPolicyUrl = "https://www.iubenda.com/privacy-policy/49425687"
}
