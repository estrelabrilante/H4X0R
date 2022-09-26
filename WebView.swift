//
//  WebView.swift
//  H4X0RNews
//
//  Created by user215496 on 9/25/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    let urlString: String?
    //TWO Delegate methods : makeUIView and updateUIView
    func makeUIView(context: Context) ->WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        //string is not null
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
