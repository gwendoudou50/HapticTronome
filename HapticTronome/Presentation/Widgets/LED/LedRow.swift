//
//  LedRow.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import SwiftUI

struct LedRow: View {
    
    @ObservedObject var tempoViewModel: TempoViewModel
    let ledRows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyHGrid(rows: ledRows, spacing: 50) {
            ForEach(0 ..< tempoViewModel.tempo.timeSignature.numberOfNote, id: \.self) { led in
                VStack {
                    if ((tempoViewModel.tempo.tempoTime-1 == led) && (tempoViewModel.tempo.isPlaying)) {
                        LedWidget(isOn: true)
                    } else {
                        LedWidget(isOn: false)
                    }  
                }
            }
        }
        .frame(height: 50)
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
    }
}

#Preview {
    LedRow(tempoViewModel: TempoViewModel())
}
