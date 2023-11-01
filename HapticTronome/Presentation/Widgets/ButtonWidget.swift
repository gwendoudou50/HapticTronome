//
//  ButtonWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import Foundation
import SwiftUI

struct ButtonWidget: View {
    
    @ObservedObject var tempoViewModel: TempoViewModel
    
    var body: some View {
        Button(action: {
            if (tempoViewModel.tempo.isPlaying) {
                tempoViewModel.stopTempo()
            } else {
                tempoViewModel.startTempo()
            }
        }) {
            Image(systemName: "play.fill")
        }
        .buttonStyle(PlayButtonStyle(isPressed: tempoViewModel.tempo.isPlaying))
    }
}

#Preview {
    ButtonWidget(tempoViewModel: TempoViewModel())
}
