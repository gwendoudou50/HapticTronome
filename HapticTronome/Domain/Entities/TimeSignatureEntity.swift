//
//  TimeSignatureEntity.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import Foundation

struct TimeSignatureEntity {
    var numberOfNote: Int
    var noteValue: Int
}

#if DEBUG

extension TimeSignatureEntity {
    static let previewTimeSignature: TimeSignatureEntity = TimeSignatureEntity(
        numberOfNote: 4,
        noteValue: 4
    )
}

#endif
