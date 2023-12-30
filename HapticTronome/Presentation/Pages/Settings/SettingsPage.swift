//
//  SettingsPage.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 22/12/2023.
//

import SwiftUI

struct SettingsPage: View {
    
    @State var isHapticVibrationActivated = false
    @State var isSoundActivated = false
    @ObservedObject var settingsViewModel = SettingsViewModel()
    
    var body: some View {
        Form {
            Section() {
                Toggle(isOn: $isHapticVibrationActivated) {
                    Text("HapticVibrations")
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
        .padding(.top)
        .preferredColorScheme(.dark)
        .navigationBarTitle("Settings")
        
    }
}

#Preview {
    SettingsPage()
}
