//
//  WebView.swift
//  NewsAppSiftUI
//
//  Created by Md Zahidul Islam Mazumder on 21/11/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    var url:String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = url {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }
}
