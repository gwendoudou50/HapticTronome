//
//  FetchBpmUseCase.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import Foundation

protocol FetchBpmUseCase {
    func call() -> BpmEntity
}

struct FetchBpmUseCaseImpl : FetchBpmUseCase {
    var repository: BpmRepository
    
    func call() -> BpmEntity {
        repository.fetchBpm()
    }
}
