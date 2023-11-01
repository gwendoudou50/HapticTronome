//
//  TempoModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/11/2023.
//

import Foundation

struct TempoModel {
    var bpm: Double
    var timeSignature: TimeSignature
    var clickSong: String
    var clickSongExtension: String
    var isPlaying: Bool
}

extension TempoModel {
    static var template: TempoModel {
        return TempoModel(
            bpm: 120.0,
            timeSignature: TimeSignature.template,
            clickSong: "Click",
            clickSongExtension: "wav",
            isPlaying: false
        )
    }
}
