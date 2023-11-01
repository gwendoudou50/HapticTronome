//
//  BpmViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 18/10/2023.
//

import Foundation
import AVKit

class TempoViewModel: ObservableObject {
    
    @Published var tempo: TempoModel = TempoModel.template
    @Published var audioPlayer: AVAudioPlayer!
    
    private var timer: Timer = Timer()
    
    
    let minimumTempo = 40.0
    let maximumTempo = 400.0
    
    init() {
        let clickUrl = Bundle.main.url(forResource: tempo.clickSong, withExtension: tempo.clickSongExtension)!
        self.audioPlayer = try! AVAudioPlayer(contentsOf: clickUrl)
    }
    
    // MARK: Private fucntions
    private func calculateTimeInterval() -> TimeInterval {
        print(60.0 / self.tempo.bpm)
        return TimeInterval(60 / self.tempo.bpm)
    }
    
    // MARK: Public functions
    func incrementBpm() {
        if (tempo.bpm < maximumTempo) {
            self.tempo.bpm += 1
        }
    }
    
    func decrementBpm() {
        if (tempo.bpm > minimumTempo) {
            self.tempo.bpm -= 1
        }
    }
    
    func startTempo() {
        self.tempo.isPlaying.toggle()
        timer = Timer.scheduledTimer(withTimeInterval: calculateTimeInterval(), repeats: tempo.isPlaying) { time in
            self.audioPlayer.currentTime = 0
            self.audioPlayer.play()
        }
    }
    
    func stopTempo() {
        self.tempo.isPlaying.toggle()
        timer.invalidate()
    }
}
