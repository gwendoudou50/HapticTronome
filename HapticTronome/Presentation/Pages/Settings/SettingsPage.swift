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
    @ObservedObject var metronomeViewModel = MetronomeViewModel.shared
    
    var body: some View {
        Form {
            
            Section() {
                if (DeviceManager.supportsHaptics) {
                    Toggle(isOn: $hapticViewModel.isHapticActivated) {
                        Text("HapticVibrations")
                    }
                }
                
                Toggle(isOn: $metronomeViewModel.isAudioActivated) {
                    Text("Sound")
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
        .padding()
        .preferredColorScheme(.dark)
        .navigationBarTitle("Settings")
        
    }
}

#Preview {
    SettingsPage()
}
