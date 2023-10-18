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
        ZStack {
            Circle()
                .foregroundStyle(
                    .shadow(
                        .inner(
                            color: .appBlack.opacity(0.25),
                            radius: 10,
                            x: 4,
                            y: 0
                        )
                    )
                    .shadow(
                        .inner(
                            color: .appBlack.opacity(0.25),
                            radius: 4,
                            x: -2,
                            y: -2
                        )
                    )
                )
                .foregroundColor(isOn ? .appPrimary : .appWhite)
        }
        .frame(width: 40, height: 40)
        
    }
}

#Preview {
    LedWidget(isOn: false)
        .padding(80)
}
