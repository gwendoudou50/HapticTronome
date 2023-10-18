//
//  LedRow.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import SwiftUI

struct LedRow: View {
    
    @State var numberOfNote: Int
    let ledRows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        LazyHGrid(rows: ledRows, spacing: 50) {
            ForEach(0 ..< numberOfNote, id: \.self) { led in
                LedWidget(isOn: false)
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
    LedRow(numberOfNote: 4)
}
