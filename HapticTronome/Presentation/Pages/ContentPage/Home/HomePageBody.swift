//
//  HomePageBody.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePageBody: View {
    
    @StateObject var tempoViewModel: TempoViewModel = TempoViewModel()
    
    var body: some View {
        VStack(spacing: 80) {
            LedRow(tempoViewModel: tempoViewModel)
                .padding()
            TempoText(tempoViewModel: tempoViewModel)
            ButtonWidget(tempoViewModel: tempoViewModel)
        }
    }
}

#Preview {
    HomePageBody()
}
