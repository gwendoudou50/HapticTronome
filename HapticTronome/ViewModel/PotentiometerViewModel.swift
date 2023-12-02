//
//  PotentiometerViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 07/11/2023.
//

import Foundation
import SwiftUI

class PotentiometerViewModel: ObservableObject {
    
    @Published var angle: Double = 0.0
    
    private var lastAngle: Double = 0.0
    
    func onChangedTempo(value: DragGesture.Value, metronomeViewModel: MetronomeViewModel) {
        let translation = value.location
        let vector = CGVector(dx: translation.x - 100, dy: translation.y - 100)
        let radians = atan2(vector.dy, vector.dx)
        let degrees = radians * 180 / .pi
        
        self.angle = degrees + 180
        
        
        if (angle >= lastAngle + 5.0) {
            metronomeViewModel.incrementBpm()
            self.lastAngle = angle
        }
        
        if (angle <= lastAngle - 5.0) {
            metronomeViewModel.decrementBpm()
            self.lastAngle = angle
        }
    }
}
