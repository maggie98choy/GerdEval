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
    @IBOutlet weak var txtView: UITextView!
   
    @IBAction func goToSecondVC(_ sender: Any) {
        
        //check if required field is empty
        txtView.text = ""
        
         guard let userName = txtUserName.text, userName != "" else {
            txtView.text = txtView.text! + "Please enter Your First & Last Name"
            return
        }
       
        guard let userEmail = txtUserEmail.text, userEmail != "" else {
            txtView.text = txtView.text! + "\nPlease enter Your Email Address"
            return
        }
        
        guard let userCellphoneNo = txtCellphoneNo.text, userCellphoneNo != ""  else {
            txtView.text = txtView.text! + "\nPlease enter this phone no."
            return
        }
 
        
        /*let userName = txtUserName.text
        let userEmail = txtUserEmail.text
        let userCellphoneNo = txtCellphoneNo.text
        */
        
        KeychainWrapper.standard.set(userName, forKey: "userName")
        KeychainWrapper.standard.set(userEmail, forKey: "userEmail")
        KeychainWrapper.standard.set(userCellphoneNo, forKey: "userCellphoneNo")
 
        
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

