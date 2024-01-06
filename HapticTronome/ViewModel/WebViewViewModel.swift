//
//  WevViewViewModel.swift
//  HapticTronome
//
//  Created by Gwendal Aubé on 06/01/2024.
//

import Foundation
import SwiftUI
import WebKit

struct WebViewViewModel: UIViewRepresentable {
    
    var url: URL
    @Binding var showWebView: Bool
    
    func makeUIView(context: Context) -> WKWebView {
        let wKWebView = WKWebView()
        return wKWebView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
