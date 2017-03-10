//
//  SignUpViewController.swift
//  3DM
//
//  Created by MaryGrace Blair on 2/23/17.
//  Copyright © 2017 Ashley Coleman. All rights reserved.
//

import Foundation
import UIKit
import Parse

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var ux_email: UITextField!

    @IBOutlet weak var ux_password: UITextField!
    @IBOutlet weak var ux_nickname: UITextField!
    @IBOutlet weak var ux_confirm_email: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
    }
    
    func myMethod() {
        var user = PFUser()
        user.username = ux_nickname.text
        user.password = ux_password.text
        user.email = ux_confirm_email.text
        // other fields can be set just like with PFObject
        //user["phone"] = "415-392-0202"
        
        user.signUpInBackground { (success, error) in
            if let error = error {
                let errorString = error.localizedDescription
                print(errorString)
                // Show the errorString somewhere and let the user try again.
            } else {
                print("yay")
                // Hooray! Let them use the app now.
            }
        }
        
        
        
    }
    
}
