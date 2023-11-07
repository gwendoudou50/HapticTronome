//
//  LittleCirclePotardWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 02/11/2023.
//

import SwiftUI

struct LittleCirclePotardWidget: View {
    
    @State var size: CGFloat
    
    var body: some View {
        Circle()
            .foregroundStyle(
                .shadow(
                    .inner(
                        color: .white.opacity(0.25),
                        radius: 4,
                        x: 0,
                        y: 03
                    )
                )
                .shadow(
                    .inner(
                        color: .black.opacity(0.25),
                        radius: 4,
                        x: 0,
                        y: 4
                    )
                )
            )
            .frame(width: size, height: size)
            .foregroundColor(.appPrimary)
    }
}

#Preview {
    LittleCirclePotardWidget(size: 20)
        .padding()
}
