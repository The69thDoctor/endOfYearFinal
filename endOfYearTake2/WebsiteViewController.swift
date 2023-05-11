//
//  WebsiteViewController.swift
//  endOfYearTake2
//
//  Created by Mobile Apps 31 on 5/2/23.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController, UIWebViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func youtubeButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.youtube.com") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    @IBAction func googleButton(_ sender: UIButton) {
        if let url2 = URL(string: "https://www.google.com") {
            UIApplication.shared.open(url2, options: [:], completionHandler: nil)
        }
    }
    @IBAction func twitterButton(_ sender: UIButton) {
        if let url3 = URL(string: "https://www.twitter.com") {
            UIApplication.shared.open(url3, options: [:], completionHandler: nil)
        }
    }
    @IBAction func adobeButton(_ sender: UIButton) {
        if let url4 = URL(string: "https://www.adobe.com") {
            UIApplication.shared.open(url4, options: [:], completionHandler: nil)
        }
    }
    
}
