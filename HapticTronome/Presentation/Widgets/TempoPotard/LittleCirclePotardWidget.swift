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
                .frame(minWidth: 18, minHeight: 18)
                .frame(idealWidth: size, idealHeight: size)
                .frame(maxWidth: size, maxHeight: size)
        }
        
    }
}

#Preview {
    LittleCirclePotardWidget(size: 50)
        .padding()
}
