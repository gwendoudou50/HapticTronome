//
//  BackgroundButton.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 14/01/2024.
//

import SwiftUI

struct BackgroundCircleWidget: View {
    
    @State var borderSize: CGFloat = 10.0
    
    var body: some View {
        Circle()
            .fill(.appUnderCirclePotard,
                  strokeBorder: LinearGradient(
                    gradient: AppConstants.underWidgetBorderGradient,
                    startPoint: .top,
                    endPoint: .bottom
                  ),
                  lineWidth: borderSize
            )
    }
}

struct BackgroundRoundedRectangleWidget: View {
    
    @State var cornerRadius: CGFloat = 0.0
    @State var borderSize: CGFloat = 10.0
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(.appUnderCirclePotard,
                  strokeBorder: LinearGradient(
                    gradient: AppConstants.underWidgetBorderGradient,
                    startPoint: .top,
                    endPoint: .bottom
                  ),
                  lineWidth: borderSize
            )
    }
}

#Preview {
    VStack {
        BackgroundCircleWidget()
        BackgroundRoundedRectangleWidget(cornerRadius: 10.0)
    }
}
