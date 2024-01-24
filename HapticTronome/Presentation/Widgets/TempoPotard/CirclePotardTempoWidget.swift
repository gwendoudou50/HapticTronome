//
//  CirclePotardTempoWidget.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 02/11/2023.
//

import SwiftUI

struct CirclePotardTempoWidget: View {
    
    @StateObject var potentiometerViewModel: PotentiometerViewModel = PotentiometerViewModel()
    @ObservedObject var metronomeViewModel: MetronomeViewModel
    
    var body: some View {
        GeometryReader { geometry in
            let size: CGFloat = geometry.frame(in: .global).width * 0.6
            let underCircleSize: CGFloat = size
            let underCircleBorderSize: CGFloat = size * 0.07
            let upperCircleSize: CGFloat = underCircleSize - underCircleBorderSize
            let litterCircleSize: CGFloat = size * 0.1
            let littleCircleXOffset: CGFloat = (upperCircleSize / 3) * -1
            ZStack {
                BackgroundCircleWidget()
                    .frame(
                        width: underCircleSize,
                        height: underCircleSize
                    )
                ZStack {
                    UpperCirclePotardWidget()
                        .frame(
                            width: upperCircleSize,
                            height: upperCircleSize
                        )
                    LittleCirclePotardWidget(size: litterCircleSize)
                        .offset(x: littleCircleXOffset)
                        .rotationEffect(
                            .init(degrees: potentiometerViewModel.angle)
                        )
                }
                .gesture(DragGesture(minimumDistance: 0)
                    .onChanged({ value in
                        potentiometerViewModel
                            .onChangedTempo(value: value, metronomeViewModel: metronomeViewModel)
                    })
                        .onEnded({ _ in
                            if (metronomeViewModel.metronome.isPlaying) {
                                metronomeViewModel.stopTempo()
                                metronomeViewModel.startMetronome()
                            }
                        })
                         
                )
            }
            .position(
                x: geometry.frame(in: .local).midX,
                y: geometry.frame(in: .local).midY
            )
        }
    }
}

#Preview {
    CirclePotardTempoWidget(metronomeViewModel: MetronomeViewModel())
        .padding()
}
