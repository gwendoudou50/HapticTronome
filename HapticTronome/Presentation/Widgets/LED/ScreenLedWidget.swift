//
//  LedRow.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import SwiftUI

struct ScreenLedWidget: View {
    
    @ObservedObject var metronomeViewModel: MetronomeViewModel
    @ScaledMetric var borderSize: CGFloat = 14
    
    var body: some View {
        
        let screenWidth = UIScreen.main.bounds.width
        let widgetSize = screenWidth - 80
        let numberOfNote = metronomeViewModel.metronome.timeSignature.numberOfNote
        let cornerRadius: CGFloat = 4
        let spacing: CGFloat = widgetSize / (CGFloat(numberOfNote) * 2.0 + 1.0)
        let ledRows = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberOfNote)
        
        LazyVGrid(columns: ledRows, alignment: .center, spacing: spacing) {
            ForEach(0 ..< numberOfNote, id: \.self) { led in
                if ((metronomeViewModel.metronome.tempoTime-1 == led) && (metronomeViewModel.metronome.isPlaying)) {
                    LedWidget(isOn: true)
                } else {
                    LedWidget(isOn: false)
                }
            }
        }
        
        .padding()
        .background(
            ZStack {
                BackgroundRoundedRectangleWidget(cornerRadius: cornerRadius, borderSize: borderSize)
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .fill(.screenBackground)
            }
        )
        .frame(width: widgetSize)
        .aspectRatio(4.0, contentMode: .fit)
    }
}

#Preview {
    ScreenLedWidget(metronomeViewModel: MetronomeViewModel())
}
