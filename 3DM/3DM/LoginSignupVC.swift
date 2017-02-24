//
//  ViewController.swift
//  3DM
//
//  Created by Ashley Coleman on 2/16/17.
//  Copyright © 2017 Ashley Coleman. All rights reserved.
//

import UIKit

class LoginSignupVC: UIViewController {

    @IBOutlet weak var uxSignUpButton: UIButton!
    @IBOutlet weak var uxLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func signUpButonPressed(_ sender: Any) {
        uxSignUpButton.isHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginButtonPressed(_ sender: Any) {
        //event handler
    }
}

