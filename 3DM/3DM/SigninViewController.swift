//
//  SigninViewController.swift
//  3DM
//
//  Created by Reagan Wood on 4/6/17.
//  Copyright © 2017 Ashley Coleman. All rights reserved.
//

import Foundation
import Parse

class SigninViewController: UIViewController {

    @IBOutlet weak var ux_username_textfield: UITextField!
    @IBOutlet weak var ux_signin_button: UIButton!
    @IBOutlet weak var ux_password_textField: UITextField!
    
    @IBAction func signin_button_clicked(_ sender: Any) {
        signIn()
    }
    
    func signIn() {
        var user = PFUser()
//        user.username = ux_confirm_email.text
//        user["nickname"] = ux_nickname.text
//        user.password = ux_password.text
//        user.email = ux_confirm_email.text
        // other fields can be set just like with PFObject
        //user["phone"] = "415-392-0202"
        
//        user.signUpInBackground { (success, error) in
//            if let error = error {
//                let errorString = error.localizedDescription
//                print(errorString)
//                // Show the errorString somewhere and let the user try again.
//            } else {
//                print("yay")
//                // Hooray! Let them use the app now.
//            }
//        }
        
        PFUser.logInWithUsername(inBackground: ux_username_textfield.text ?? "", password: ux_password_textField.text ?? "") { (PFUser, Error) in
                
            if let error = Error {
                print (error)
                    return
                    
            }
            
            print("Successful")
        }
        
            
        
        
        
    }
    
}
