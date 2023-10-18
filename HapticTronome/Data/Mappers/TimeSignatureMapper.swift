//
//  TimeSignatureMapper.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import Foundation

struct TimeSignatureMapper {
    static func toEntity(from timeSignatureModel: TimeSignatureModel) -> TimeSignatureEntity {
        return TimeSignatureEntity(
            numberOfNote: timeSignatureModel.numberOfNote,
            noteValue: timeSignatureModel.noteValue
        )
    }
    
    static func toModel(from timeSignatureEntity: TimeSignatureEntity) -> TimeSignatureModel {
        return TimeSignatureModel(
            numberOfNote: timeSignatureEntity.numberOfNote, 
            noteValue: timeSignatureEntity.noteValue
        )
    }
}
