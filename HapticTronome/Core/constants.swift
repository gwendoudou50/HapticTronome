//
//  constants.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import Foundation
import SwiftUI

struct AppConstants {
    let playButtonGradient = Gradient(colors: [Color.appButtonGradientLight, Color.appButtonGradientDark])
    let underCirclePotardBorderGradient = Gradient(
        colors: [Color.black.opacity(0.1), Color.white.opacity(0.30)]
    )
    
    let hapticFileName = "HapticClick"
    let englishPrivacyPolicyUrl = "https://www.iubenda.com/privacy-policy/20234861"
    let frenchPrivacyPolicyUrl = "https://www.iubenda.com/privacy-policy/49425687"
}
