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
        ZStack {
            Circle()
                .fill(.appPrimary)
                .frame(width: size, height: size)
                .modifier(
                    InnerShadowModifier(
                        lineWidth: 4,
                        radius: 4,
                        firstX: 0,
                        firstY: -3,
                        secondX: 0,
                        secondY: 4,
                        firstGradientStartPoint: .bottom,
                        firstGradientEndPoint: .center,
                        secondGradientStartPoint: .top,
                        secondGradientEndPoint: .center
                    )
                )
        }
        
    }
}

#Preview {
    LittleCirclePotardWidget(size: 100)
        .padding()
}
