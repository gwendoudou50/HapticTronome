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
        
        
        VStack(spacing: 80) {
            BpmText(bpm: bpmEntity.bpm, isPlaying: false)
            ButtonWidget()
        }
    }
}

#Preview {
    HomePageBody()
}
