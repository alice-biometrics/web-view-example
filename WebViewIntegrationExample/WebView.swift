//
//  WebView.swift
//  WebViewIntegrationExample
//
//  Created by Adrian García on 8/3/23.
//

import Foundation

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    var url: URL
    var frame: CGRect

    func makeUIView(context: Context) -> WKWebView {
        let webConfiguration = WKWebViewConfiguration()
        
        webConfiguration.allowsInlineMediaPlayback = true

        return WKWebView(frame: frame, configuration: webConfiguration)
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
