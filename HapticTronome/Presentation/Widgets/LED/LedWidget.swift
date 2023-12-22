//
//  LedWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import SwiftUI

struct LedWidget: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        let color: Color = isOn ? .appPrimary : .appWhite
        
        Circle()
            .fill(color)
            .modifier(
                InnerShadowModifier(
                    firstColor: .black,
                    secondColor: .black,
                    lineWidth: 8,
                    radius: 4,
                    firstX: 0,
                    firstY: 4,
                    secondX: -2,
                    secondY: -2,
                    firstGradientStartPoint: .bottom,
                    firstGradientEndPoint: .center,
                    secondGradientStartPoint: .top,
                    secondGradientEndPoint: .center
                )
            )
    }
}

#Preview {
    LedWidget(isOn: false)
        .padding(80)
}
