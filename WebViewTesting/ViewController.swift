//
//  ViewController.swift
//  WebViewTesting
//
//  Created by Sasidhar Reddy on 21/05/22.
//
import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var addressUrlField: UITextField!
    @IBOutlet weak var NAVIGATION: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "http://www.google.com"
        let urlRequest = URLRequest(url: URL(string: url)!)
        webView.load(urlRequest)
        self.addressUrlField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()  //if desired
        performAction()
        return true
    }
    
    func performAction() {
        let url = "http://www.\(addressUrlField.text!)"
        let urlRequest = URLRequest(url: URL(string: url)!)
        webView.load(urlRequest)
    }
    
    @IBAction func webViewPressed(_ sender: Any) {
        let url = "http://www.\(addressUrlField.text!)"
        let urlRequest = URLRequest(url: URL(string: url)!)
        webView.load(urlRequest)
        print("hi")
    }
}

