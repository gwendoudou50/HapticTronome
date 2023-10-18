//
//  TimeSignatureDataSource.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 15/10/2023.
//

import Foundation

protocol TimeSignatureDataSource {
    func fetchTimeSignature() -> TimeSignatureModel
}
