//
//  BpmViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 18/10/2023.
//

import Foundation



class TempoViewModel: ObservableObject {
    @Published var tempo: TempoModel = TempoModel.template
    let minimumTempo = 40
    let maximumTempo = 400
    
    func incrementBpm() {
        if (tempo.bpm < maximumTempo) {
            self.tempo.bpm += 1
        }
    }
    
    func decrementBpm() {
        if (tempo.bpm > minimumTempo) {
            self.tempo.bpm -= 1
        }
    }
}
