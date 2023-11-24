//
//  BpmText.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import SwiftUI

struct TempoText: View {
    
    @ObservedObject var metronomeViewModel: MetronomeViewModel
    
    var body: some View {
        Text("\(String(format: "%.0f", metronomeViewModel.metronome.bpm)) BPM")
            .foregroundColor(.appWhite)
            .font(.system(size: 24))
            .fontWeight(.medium)
            .opacity(metronomeViewModel.metronome.isPlaying ? 1.0 : 0.3)
            .glow(
                color: .appWhite,
                radius: metronomeViewModel.metronome.isPlaying ? 7 : 0,
                overlay: false
            )
    }
}


#Preview {
    return ZStack {
        Color.appBackground.edgesIgnoringSafeArea(.all)
        TempoText(metronomeViewModel: MetronomeViewModel())
    }
}
