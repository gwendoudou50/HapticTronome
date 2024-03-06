//
//  ContentView.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

let coloredNavigationAppearance = UINavigationBarAppearance()

struct HomePage: View {
    init() {
        coloredNavigationAppearance.configureWithOpaqueBackground()
        coloredNavigationAppearance.backgroundColor = .appBackground
        coloredNavigationAppearance.titleTextAttributes = [.foregroundColor: UIColor.appWhite]
        coloredNavigationAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.appWhite]
        
        UINavigationBar.appearance().standardAppearance = coloredNavigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavigationAppearance
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                Color.appBackground.edgesIgnoringSafeArea(.all)
                    .overlay(
                        Image(.background)
                            .resizable()
                            .ignoresSafeArea(.all)
                            .opacity(0.04)
                    )
                VStack {
                    HStack(alignment: .center) {
                        Text("HapticTronomeTitle")
                            .font(.largeTitle.bold())
                            .foregroundStyle(Color.appWhite)
                        Spacer()
                        NavigationLink(destination: SettingsPage()) {
                            SettingsWidgetButton()
                        }
                    }
                    .padding()
                    
                    HomePageBody()
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomePage()
}
