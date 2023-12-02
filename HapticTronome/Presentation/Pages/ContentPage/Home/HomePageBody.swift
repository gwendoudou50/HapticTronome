//
//  HomePageBody.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePageBody: View {
    
    @StateObject var metronomeViewModel: MetronomeViewModel = MetronomeViewModel()
    @ScaledMetric var vstackSpacing = 5
    var hapticViewModel = HapticViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: vstackSpacing) {
            Spacer()
            LedRow(metronomeViewModel: metronomeViewModel)
                .padding()
            
            Spacer()
            
            TempoText(metronomeViewModel: metronomeViewModel)
            
            CirclePotardTempoWidget(metronomeViewModel: metronomeViewModel)
                .frame(height: 300)
            
            ButtonWidget(metronomeViewModel: metronomeViewModel)
            Spacer()
        }
    }
}

#Preview {
    HomePageBody()
}
