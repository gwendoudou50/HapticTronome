//
//  CirclePotardTempoWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 02/11/2023.
//

import SwiftUI

struct CirclePotardTempoWidget: View {
    var body: some View {
        GeometryReader { geometry in
            let size: CGFloat = geometry.size.width * 0.6
            let underCircleSize: CGFloat = size
            let underCircleBorderSize: CGFloat = size * 0.1
            let upperCircleSize: CGFloat = underCircleSize - underCircleBorderSize
            let litterCircleSize: CGFloat = size * 0.1
            let littleCircleXOffset: CGFloat = (upperCircleSize / 3) * -1
            ZStack {
                UnderCirclePotardWidget(size: size, borderSize: underCircleBorderSize)
                    .frame(
                        width: underCircleSize,
                        height: underCircleSize
                    )
                UpperCirclePotardWidget()
                    .frame(
                        width: upperCircleSize,
                        height: upperCircleSize
                    )
                LittleCirclePotardWidget(size: litterCircleSize)
                    .offset(x: littleCircleXOffset)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .alignmentGuide(HorizontalAlignment.center) { d in
                    d[HorizontalAlignment.center]
                }
                .alignmentGuide(VerticalAlignment.center) { d in
                    d[VerticalAlignment.center]
                }
        }
    }
}

#Preview {
    CirclePotardTempoWidget()
        .padding()
}
