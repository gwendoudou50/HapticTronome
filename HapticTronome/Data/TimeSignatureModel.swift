//
//  TimeSignature.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/11/2023.
//

import Foundation

struct TimeSignature {
    var numberOfNote: Int
    var timeValue: Int
}

extension TimeSignature {
    static var template: TimeSignature {
        return TimeSignature(numberOfNote: 4, timeValue: 4)
    }
}
