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
        VStack {
            
            Circle()
                .fill(
                    .appUnderCirclePotard,
                    strokeBorder: LinearGradient(
                        gradient: AppConstants().underCirclePotardBorderGradient,
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: borderSize
                )
        }
    }
}


#Preview {
    UnderCirclePotardWidget(size: 100, borderSize: 0.1)
        .padding()
}
