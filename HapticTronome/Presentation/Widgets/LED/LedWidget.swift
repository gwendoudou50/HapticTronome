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
        let opacity: Double = isOn ? 1.0 : 0.2
        
        Circle()
            .fill(.appPrimary)
            .opacity(opacity)
            .scaledToFill()
            .frame(width: nil)
    }
}

#Preview {
    VStack {
        LedWidget(isOn: false)
            .padding(80)
        LedWidget(isOn: true)
            .padding(80)
    }
}
