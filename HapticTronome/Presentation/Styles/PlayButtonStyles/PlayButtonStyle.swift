//
//  ButtonStyle.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 10/10/2023.
//

import SwiftUI

struct PlayButtonStyle: ButtonStyle {
    
    var isPressed: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        if (!isPressed) {
            configuration.label
                .font(.body)
                .padding(.horizontal, 26)
                .padding(.vertical, 16)
                .foregroundColor(Color("PrimaryColor"))
                .background(
                    ZStack {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(AppConstants().playButtonGradient)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color("Black"), lineWidth: 4)
                                    .shadow(color: Color("White").opacity(0.14), radius: 1, x: 0, y: 1)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            )
                    }
                )
                .shadow(color: Color("Black").opacity(0.24), radius: 8, x: 0, y: 6)
                .shadow(color: Color("White").opacity(0.14), radius: 1, x: 0, y: -1)
        } else {
            configuration.label
                .font(.body)
                .padding(.horizontal, 26)
                .padding(.vertical, 16)
                .foregroundColor(Color("White"))
                .glow(color: Color("White"), radius: 15)
                .background(
                    ZStack {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color("Grey"))
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color("Black"), lineWidth: 4)
                                    .shadow(color: Color("Black").opacity(0.40), radius: 1, x: 0, y: -1)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            )
                            .shadow(color: Color("White").opacity(0.14), radius: 1, x: 0, y: -1)
                    }
                )
                
        }
        
    }
}

#Preview {
    HStack {
        Button(action: {}) {
            Image(systemName: "play.fill")
        }.buttonStyle(PlayButtonStyle(isPressed: false))
        
        Button(action: {}) {
            Image(systemName: "play.fill")
        }.buttonStyle(PlayButtonStyle(isPressed: true))
    }
    .buttonStyle(PlayButtonStyle())
    .previewLayout(.sizeThatFits)
    .padding()
}
