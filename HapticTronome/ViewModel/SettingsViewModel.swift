//
//  SettingsViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 23/12/2023.
//

import Foundation

class SettingsViewModel: ObservableObject {
    @Published var settings: SettingsModel = SettingsModel.template
    
    init() {
        settings.appVersion = getAppVersion()
    }
    
    private func getAppVersion() -> String {
        if let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String {
            return appVersion
        }
        
        return settings.appVersion
    }
    
    func getUrlPrivacyPolicy() -> String {
        let appLanguage = Locale.preferredLanguages[0]
        
        if (appLanguage == "fr-FR") {
            return AppConstants.frenchPrivacyPolicyUrl
        }
        
        return AppConstants.englishPrivacyPolicyUrl
    }
}
