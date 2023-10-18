//
//  BpmRepositoryImpl.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import Foundation

struct BpmRepositoryImpl : BpmRepository {
    var datasource: BpmDataSource
    
    func fetchBpm() -> BpmEntity {
        let bpm: BpmModel = datasource.fetchBpm()
        return BpmMapper.toEntity(from: bpm)
    }
}
