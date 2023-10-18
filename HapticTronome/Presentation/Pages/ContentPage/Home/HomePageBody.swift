//
//  HomePageBody.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePageBody: View {
    var body: some View {
        
        let bpmEntity = BpmEntity.previewMovie
        let timeSignatureEntity = TimeSignatureEntity.previewTimeSignature
        
        
        VStack(spacing: 80) {
            LedRow(numberOfNote: timeSignatureEntity.numberOfNote)
                .padding()
            BpmText(bpm: bpmEntity.bpm, isPlaying: true)
            ButtonWidget()
        }
    }
}

#Preview {
    HomePageBody()
}
