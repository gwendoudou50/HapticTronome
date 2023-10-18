//
//  Bpm.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import Foundation

struct BpmEntity {
    var bpm: Int
}

#if DEBUG

extension BpmEntity {
    static let previewMovie: BpmEntity = BpmEntity(
        bpm: 120
    )
}

#endif
