//
//  TempoModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/11/2023.
//

import Foundation

struct TempoModel {
    var bpm: Int
    var timeSignature: TimeSignature
    var clickSong: String
    var clickSongExtension: String
    var isPlaying: Bool
}

extension TempoModel {
    static var template: TempoModel {
        return TempoModel(
            bpm: 80,
            timeSignature: TimeSignature.template,
            clickSong: "click",
            clickSongExtension: "mp3",
            isPlaying: false
        )
    }
}
