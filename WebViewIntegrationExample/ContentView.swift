//
//  ContentView.swift
//  WebViewIntegrationExample
//
//  Created by Adrian García on 8/3/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    
    private var aliceGoURL = "https://demo.alicebiometrics.com"
    
    var body: some View {
        VStack {
            Button {
                showWebView.toggle()
            } label: {
                Text("Open WebView")
            }.fullScreenCover(isPresented: $showWebView, content: {
                WebView(url: URL(string: aliceGoURL)!, frame: UIScreen.main.bounds)
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
