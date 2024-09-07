//
//  ContentView.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 07/09/2024.
//

import CoreHaptics
import SwiftUI

struct ContentView: View {
    init() {
        // Check if the device supports haptics.
        let hapticCapability = CHHapticEngine.capabilitiesForHardware()
        DeviceManager.supportsHaptics = hapticCapability.supportsHaptics
    }
    
    
    var body: some View {
        HomePage()
    }
}

#Preview {
    ContentView()
}
