//
//  LedRow.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import SwiftUI

struct LedRow: View {
    
    @ObservedObject var metronomeViewModel: MetronomeViewModel
    
    let ledRows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyHGrid(rows: ledRows, spacing: 40) {
            ForEach(0 ..< metronomeViewModel.metronome.timeSignature.numberOfNote, id: \.self) { led in
                VStack {
                    if ((metronomeViewModel.metronome.tempoTime-1 == led) && (metronomeViewModel.metronome.isPlaying)) {
                        LedWidget(isOn: true)
                    } else {
                        LedWidget(isOn: false)
                    }
                }
                .scaledToFit()
            }
        }
        .padding()
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(.appUltraDarkGrey)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.appBlack, lineWidth: 5)
                    )
            }
        )

        .frame(idealHeight: 70)
        .frame(maxHeight: 75)
    }
}

#Preview {
    LedRow(metronomeViewModel: MetronomeViewModel())
}
