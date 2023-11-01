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
            tempoViewModel.tempo.isPlaying.toggle()
            tempoViewModel.incrementBpm()
        }) {
            Image(systemName: "play.fill")
        }
        .buttonStyle(PlayButtonStyle(isPressed: tempoViewModel.tempo.isPlaying))
    }
}

#Preview {
    ButtonWidget(tempoViewModel: TempoViewModel())
}
