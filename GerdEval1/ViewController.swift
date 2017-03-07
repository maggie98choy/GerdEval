//
//  ViewController.swift
//  GerdEval1
//
//  Created by Producer on 3/6/17.
//  Copyright © 2017 Producer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtCellphoneNo: UITextField!
   
    @IBAction func goToSecondVC(_ sender: Any) {
        
        let userName = txtUserName.text
        let userEmail = txtUserEmail.text
        let userCellphoneNo = txtCellphoneNo.text
        
        //check if required field is empty
        
        KeychainWrapper.standard.set(userName!, forKey: "userName")
        KeychainWrapper.standard.set(userEmail!, forKey: "userEmail")
        KeychainWrapper.standard.set(userCellphoneNo!, forKey: "userCellphoneNo")
 
        
        performSegue(withIdentifier: "goToSecondVC", sender: "")
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

