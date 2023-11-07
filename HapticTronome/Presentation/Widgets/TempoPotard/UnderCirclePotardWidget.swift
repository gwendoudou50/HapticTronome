//
//  UnderCirclePotardWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 02/11/2023.
//

import SwiftUI

struct UnderCirclePotardWidget: View {
    
    @State var size: CGFloat
    @State var borderSize: CGFloat
    
    var body: some View {
        Circle()
            .fill(.appUnderCirclePotard)
            .strokeBorder(
                AppConstants().underCirclePotardBorderGradient,
                lineWidth: borderSize
            )
    }
}

#Preview {
    UnderCirclePotardWidget(size: 100, borderSize: 0.1)
        .padding()
}
