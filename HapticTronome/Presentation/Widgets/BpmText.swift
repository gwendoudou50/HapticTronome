//
//  BpmText.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/10/2023.
//

import SwiftUI

struct BpmText: View {
    
    @State var bpm: Int
    @State var isPlaying: Bool
    
    var body: some View {
        Text("\(bpm) BPM")
            .foregroundColor(.appWhite)
            .font(.system(size: 27))
            .fontWeight(.medium)
            .glow(
                color: .appWhite,
                radius: isPlaying ? 7 : 0,
                overlay: false
            )
        
    }
}

#Preview {
    ZStack {
        Color.appBackground.edgesIgnoringSafeArea(.all)
        BpmText(bpm: 80, isPlaying: false)
    }
    
}
