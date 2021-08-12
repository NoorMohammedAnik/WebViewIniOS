//
//  ViewController.swift
//  WebViewIniOS
//
//  Created by Noor Mohammed Anik on 12/8/21.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)

        //for loading url
       guard let url = URL(string: "https://shorboraho.com")
       else {
        return
       }
        
        webView.load(URLRequest(url: url))
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
        
    }

}

