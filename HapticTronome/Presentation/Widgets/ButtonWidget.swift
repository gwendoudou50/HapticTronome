//
//  ButtonWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import Foundation
import SwiftUI

struct ButtonWidget: View {
    @State private var isPlaying: Bool = false
    var buttonStyle:any ButtonStyle = PlayButtonStyle()
    
    
    var body: some View {
        Button(action: {
            
                isPlaying.toggle()
            
            print(isPlaying)
        }) {
            Image(systemName: "play.fill")
        }
            .buttonStyle(PlayButtonStyle(isPressed: isPlaying))
    }
}

#Preview {
    ButtonWidget()
}
