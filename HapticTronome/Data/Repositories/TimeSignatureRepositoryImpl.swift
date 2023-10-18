//
//  TimeSignatureRepositoryImpl.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import Foundation

struct TimeSignatureRepositoryImpl : TimeSignatureRepository {
    var datasource: TimeSignatureDataSource
    
    func fetchTimeSignature() -> TimeSignatureEntity {
        let timeSignature: TimeSignatureModel = datasource.fetchTimeSignature()
        return TimeSignatureMapper.toEntity(from: timeSignature)
    }
}
