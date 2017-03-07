//
//  SecondVC.swift
//  GerdEval1
//
//  Created by Producer on 3/6/17.
//  Copyright © 2017 Producer. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://10.0.0.148/");
        let request = URLRequest(url: url!);
        webView.loadRequest(request);

        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
