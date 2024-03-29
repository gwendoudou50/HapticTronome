//
//  HapticViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 25/11/2023.
//

import CoreHaptics
import Foundation
import UIKit

class HapticViewModel: ObservableObject {
    static let shared = HapticViewModel()
    
    @Published var isHapticActivated: Bool = true
    var engine: CHHapticEngine!
    
    init() {
        createEngine()
    }
    
    func createEngine() {
        // Create and configure a haptic engine.
        do {
            engine = try CHHapticEngine()
        } catch {
            print("Engine Creation Error: \(error)")
        }
        
        guard let engine = engine else {
            print("Failed to create engine!")
            return
        }
        
        // The reset handler provides an opportunity to restart the engine.
        engine.resetHandler = {
            print("Reset Handler: Restarting the engine.")
            
            do {
                // Try restarting the engine.
                try self.engine.start()
                        
                // Register any custom resources you had registered, using registerAudioResource.
                // Recreate all haptic pattern players you had created, using createPlayer.

            } catch {
                fatalError("Failed to restart the engine: \(error)")
            }
        }
        
        // The stopped handler alerts you of engine stoppage due to external causes.
        engine.stoppedHandler = { reason in
            print("The engine stopped for reason: \(reason.rawValue)")
            switch reason {
            case .audioSessionInterrupt:
                engine.stop()
                print("Audio session interrupt")
            case .applicationSuspended:
                print("Application suspended")
            case .idleTimeout:
                print("Idle timeout")
            case .systemError:
                print("System error")
            case .notifyWhenFinished:
                print("Playback finished")
            case .gameControllerDisconnect:
                print("Controller disconnected.")
            case .engineDestroyed:
                print("Engine destroyed.")
            @unknown default:
                print("Unknown error")
            }
        }
    }
    
    func playHapticTick() {
        let state = UIApplication.shared.applicationState
        let fileName = AppConstants.hapticFileName
        
        if !DeviceManager.supportsHaptics {
            print("This device doesn't supports haptics.")
            return
        }
        
        // Can't play haptic vibration in background mode
        if state == .background {
            engine.stop()
            
            return
        }
        
        // Play haptic vibration
        // Express the path to the AHAP file before attempting to load it.
        guard let path = Bundle.main.path(forResource: fileName, ofType: "ahap") else {
            print("Can't load \(fileName)")
            return
        }
        
        do {
            // Start the engine in case it's idle.
            try engine?.start()
            
            // Tell the engine to play a pattern.
            try engine?.playPattern(from: URL(fileURLWithPath: path))
            
        } catch {
            print("An error occured playing \(fileName): \(error).")
        }
    }
}
