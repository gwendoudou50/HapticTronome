//
//  TimeSignatureViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import Foundation

class TimeSignatureViewModel: ObservableObject {
    private var _fetchTimeSignatureUseCase: FetchTimeSignatureUseCase
    
    init(_fetchTimeSignatureUseCase: FetchTimeSignatureUseCase) {
        self._fetchTimeSignatureUseCase = _fetchTimeSignatureUseCase
    }
    
    func fetchTimeSignature() -> TimeSignatureEntity {
        return _fetchTimeSignatureUseCase.call()
    }
}
