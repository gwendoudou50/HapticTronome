//
//  SettingsPage.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 22/12/2023.
//

import SwiftUI

struct SettingsPage: View {
    
    @ObservedObject var settingsViewModel = SettingsViewModel()
    @ObservedObject var hapticViewModel = HapticViewModel.shared
    
    var body: some View {
        Form {
            if (DeviceManager.supportsHaptics) {
                Section() {
                    Toggle(isOn: $hapticViewModel.isHapticActivated) {
                        Text("HapticVibrations")
                    }
                }
            }
            
            Section(header: Text("About")) {
                HStack {
                    Text("Version")
                    Spacer()
                    Text(settingsViewModel.settings.appVersion)
                }
                
            }
        }
        .padding(DeviceManager.supportsHaptics ? 16 : 0)
        .preferredColorScheme(.dark)
        .navigationBarTitle("Settings")
        
    }
}

#Preview {
    SettingsPage()
}
