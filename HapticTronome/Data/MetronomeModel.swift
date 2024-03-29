//
//  TempoModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/11/2023.
//

import Foundation

struct MetronomeModel {
    var bpm: Double
    var timeSignature: TimeSignature
    var soundFilePath: String
    var soundFileExtension: String
    var isPlaying: Bool
    var tempoTime: Int
    var haptic: HapticViewModel
}

extension MetronomeModel {
    static var template: MetronomeModel {
        return MetronomeModel(
            bpm: 120.0,
            timeSignature: TimeSignature.template,
            soundFilePath: "AudioClick",
            soundFileExtension: "wav",
            isPlaying: false,
            tempoTime: 1,
            haptic: HapticViewModel.shared
        )
    }
}
