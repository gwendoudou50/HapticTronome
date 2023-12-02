//
//  HapticTronomeApp.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI
import CoreHaptics

@main
struct HapticTronomeApp: App {
    init() {
        // Check if the device supports haptics.
        let hapticCapability = CHHapticEngine.capabilitiesForHardware()
        DeviceManager.supportsHaptics = hapticCapability.supportsHaptics
    }
    
    var body: some Scene {
        WindowGroup {
            HomePage()
        }
    }
}

