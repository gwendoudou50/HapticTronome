//
//  BpmMapper.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import Foundation

struct BpmMapper {
    static func toEntity(from bpmModel: BpmModel) -> BpmEntity {
        return BpmEntity(bpm: bpmModel.bpm)
    }
    
    static func toModel(from bpmEntity: BpmEntity) -> BpmModel {
        return BpmModel(bpm: bpmEntity.bpm)
    }
}
