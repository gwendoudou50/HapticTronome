//
//  HomePageBody.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePageBody: View {
    
    @StateObject var metronomeViewModel: MetronomeViewModel = MetronomeViewModel.shared
    @ScaledMetric var vstackSpacing = 5
    
    var body: some View {
        VStack(spacing: vstackSpacing) {
            Spacer()
            LedRow(metronomeViewModel: metronomeViewModel)
            
            Spacer()
            
            TempoText(metronomeViewModel: metronomeViewModel)
            
            CirclePotardTempoWidget(metronomeViewModel: metronomeViewModel)
                .frame(height: UIScreen.main.bounds.height * 0.4)
                .padding()
            
            
            ButtonWidget(metronomeViewModel: metronomeViewModel)
            Spacer()
        }
    }
}

#Preview {
    HomePageBody()
}
