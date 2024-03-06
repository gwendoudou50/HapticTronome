//
//  HomePageBody.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePageBody: View {
    @StateObject var metronomeViewModel: MetronomeViewModel = .shared
    @ScaledMetric var vstackSpacing = 5
    @ScaledMetric var screenLedWidgetPadding = 28
    @ScaledMetric var cirlePotardTempoWidgetPadding = 16

    var body: some View {
        VStack(spacing: vstackSpacing) {
            Spacer()
            ScreenLedWidget(metronomeViewModel: metronomeViewModel)
                .padding(.vertical, screenLedWidgetPadding)
            TempoText(metronomeViewModel: metronomeViewModel)

            CirclePotardTempoWidget(metronomeViewModel: metronomeViewModel)
                .frame(height: UIScreen.main.bounds.height * 0.4)
                .padding(.horizontal, cirlePotardTempoWidgetPadding)

            ButtonWidget(metronomeViewModel: metronomeViewModel)
            Spacer()
        }
    }
}

#Preview {
    HomePageBody()
}
