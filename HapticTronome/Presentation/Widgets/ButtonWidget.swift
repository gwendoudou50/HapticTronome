//
//  ButtonWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import Foundation
import SwiftUI

struct ButtonWidget: View {
    
    @ObservedObject var metronomeViewModel: MetronomeViewModel
    
    var body: some View {
        Button(action: {
            if (metronomeViewModel.metronome.isPlaying) {
                metronomeViewModel.stopTempo()
            } else {
                metronomeViewModel.startMetronome()
            }
        }) {
            Image(systemName: "play.fill")
        }
        .buttonStyle(PlayButtonStyle(isPressed: metronomeViewModel.metronome.isPlaying))
    }
}

#Preview {
    ButtonWidget(metronomeViewModel: MetronomeViewModel())
}
