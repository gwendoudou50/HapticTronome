//
//  SettingsPage.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 22/12/2023.
//

import SwiftUI

struct SettingsPage: View {
    
    @StateObject var settingsViewModel = SettingsViewModel()
    @ObservedObject var hapticViewModel = HapticViewModel.shared
    @ObservedObject var metronomeViewModel = MetronomeViewModel.shared
    
    var body: some View {
        Form {
            
            Section() {
                Toggle(isOn: $metronomeViewModel.isAudioActivated) {
                    Text("Sound")
                }
                
                if (DeviceManager.supportsHaptics) {
                    Toggle(isOn: $hapticViewModel.isHapticActivated) {
                        Text("HapticVibrations")
                    }
                }
            }
            
            Section(header: Text("About")) {
                Link("PrivacyPolicy", destination: URL(string: settingsViewModel.getUrlPrivacyPolicy())!)
                    .foregroundColor(.primary)
                HStack {
                    Text("Version")
                    Spacer()
                    Text(settingsViewModel.settings.appVersion)
                }
                
            }
        }
        .padding(.top)
        .preferredColorScheme(.dark)
        .navigationBarTitle("Settings")
        
    }
}

#Preview {
    SettingsPage()
}
