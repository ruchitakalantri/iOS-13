//
//  WebView.swift
//  H4XOR Newz
//
//  Created by Ruchita Rathi on 5/20/20.
//  Copyright © 2020 Updatus. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
        
        let urlString : String?
        
        // create a web view from WKWebView
        func makeUIView(context: Context) -> WKWebView {
               return WKWebView()
        }
        
        func updateUIView(_ uiView: WKWebView, context: Context) {
                if let safeString = urlString {
                        if let url = URL(string: safeString){
                                let request = URLRequest(url: url)
                                uiView.load(request)
                        }
                        
                }
        }
}
