//
//  HomePageBody.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePageBody: View {
    
    @StateObject var tempoViewModel: TempoViewModel = TempoViewModel()
    @ScaledMetric var vstackSpacing = 5
    
    var body: some View {
        VStack(alignment: .center, spacing: vstackSpacing) {
            
            LedRow(tempoViewModel: tempoViewModel)
                .padding()
            
            Spacer()
            
            TempoText(tempoViewModel: tempoViewModel)

            
            CirclePotardTempoWidget()
                .frame(height: 400)
            
            ButtonWidget(tempoViewModel: tempoViewModel)
            Spacer()
        }
    }
}

#Preview {
    HomePageBody()
}
