//
//  BpmViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 18/10/2023.
//

import Foundation
import AVKit
import SwiftUI


class MetronomeViewModel: ObservableObject {
    
    static let shared = MetronomeViewModel()
    
    @Published var metronome: MetronomeModel = MetronomeModel.template
    @Published var audioPlayer: AVAudioPlayer!
    @Published var isAudioActivated: Bool = true
    
    private var timer: Timer?
    private var impactFeedbackGenerator = UIImpactFeedbackGenerator()
    
    let minimumTempo = 40.0
    let maximumTempo = 400.0
    
    init() {
        let soundUrl = Bundle.main.url(forResource: metronome.soundFilePath, withExtension: metronome.soundFileExtension)!
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            self.audioPlayer = try! AVAudioPlayer(contentsOf: soundUrl)
        } catch {
            print("Failed to initialize player", error)
        }
        
    }
    
    // MARK: Private fucntions
    private func calculateTimeInterval() -> TimeInterval {
        return TimeInterval(60 / self.metronome.bpm)
    }
    
    // MARK: Public functions
    func incrementBpm() {
        if (metronome.bpm < maximumTempo) {
            self.metronome.bpm += 1
        }
    }
    
    func decrementBpm() {
        if (metronome.bpm > minimumTempo) {
            self.metronome.bpm -= 1
        }
    }
    
    func startMetronome() {
        self.metronome.isPlaying.toggle()
        playHapticFeedback()
        playAudioClick()
        
        if (self.metronome.haptic.isHapticActivated) {
            self.metronome.haptic.playHapticTick()
        }
        
        timer = Timer.scheduledTimer(withTimeInterval: calculateTimeInterval(), repeats: true) { _ in
            
            self.playAudioClick()
            
            if (self.metronome.haptic.isHapticActivated) {
                self.metronome.haptic.playHapticTick()
            }
            
            if (self.metronome.timeSignature.numberOfNote > self.metronome.tempoTime) {
                self.metronome.tempoTime += 1
            } else {
                self.metronome.tempoTime = 1
            }
        }
    }
    
    func stopTempo() {
        playHapticFeedback()
        self.metronome.isPlaying.toggle()
        self.metronome.tempoTime = 1
        timer?.invalidate()
        timer = nil
    }
    
    private func playHapticFeedback() {
        impactFeedbackGenerator.prepare()
        impactFeedbackGenerator.impactOccurred()
    }
    
    private func playAudioClick() {
        if (isAudioActivated) {
            audioPlayer.prepareToPlay()
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
    }
    
    
}
