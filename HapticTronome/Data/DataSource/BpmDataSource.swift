//
//  BpmDataSource.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import Foundation

protocol BpmDataSource {
    func fetchBpm() -> BpmModel
}
