//
//  ContentView.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 01/10/2023.
//

import SwiftUI

struct HomePage: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color.appWhite)]
    }
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .center){
                Color.appBackground.edgesIgnoringSafeArea(.all)
                
                HomePageBody()
                    .navigationTitle("HapticTronomeTitle")
            }
        }
    }
}

#Preview {
    HomePage()
}
