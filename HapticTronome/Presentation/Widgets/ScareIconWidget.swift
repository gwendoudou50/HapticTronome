//
//  IconWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 06/01/2024.
//

import SwiftUI

struct ScareIconWidget: View {
    
    @State var systemName: String
    @State var backgroundColor: Color
    
    var body: some View {
        
        Image(systemName: systemName)
            .aspectRatio(contentMode: .fill)
            .foregroundColor(.appWhite)
            .padding(6)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(backgroundColor)
            )
    }
}

#Preview {
    ScareIconWidget(systemName: "decrease.indent", backgroundColor: .appPrimary)
}
