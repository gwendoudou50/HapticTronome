//
//  BpmText.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import SwiftUI

struct TempoText: View {
    
    @ObservedObject var tempoViewModel: TempoViewModel 
    
    var body: some View {
        Text("\(String(format: "%.0f", tempoViewModel.tempo.bpm)) BPM")
            .foregroundColor(.appWhite)
            .font(.system(size: 27))
            .fontWeight(.medium)
            .glow(
                color: .appWhite,
                radius: tempoViewModel.tempo.isPlaying ? 7 : 0,
                overlay: false
            )   
    }
}


#Preview {
    return ZStack {
        Color.appBackground.edgesIgnoringSafeArea(.all)
        TempoText(tempoViewModel: TempoViewModel())
    }
}
