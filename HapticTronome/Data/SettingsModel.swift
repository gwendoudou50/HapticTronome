//
//  SettingsModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 23/12/2023.
//

import Foundation

struct SettingsModel {
    var appVersion: String
}

extension SettingsModel {
    static var template: SettingsModel {
        return SettingsModel(
            appVersion: "AppVersionNotFind"
        )
    }
}
