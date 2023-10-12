//
//  ContentView.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePage: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color(.white))]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.background).edgesIgnoringSafeArea(.all)
                
                HomePageBody()
                    .navigationTitle("HapticTronomeTitle")
                    .padding()
            }
        }
    }
}

#Preview {
    HomePage()
}
