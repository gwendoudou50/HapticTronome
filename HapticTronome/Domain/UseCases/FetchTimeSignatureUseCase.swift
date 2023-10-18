//
//  FetchTimeSignatureUseCase.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import Foundation

protocol FetchTimeSignatureUseCase {
    func call() -> TimeSignatureEntity
}

struct FetchTimeSignatureUseCaseImpl : FetchTimeSignatureUseCase {
    var repository: TimeSignatureRepository
    
    func call() -> TimeSignatureEntity {
        repository.fetchTimeSignature()
    }
}
