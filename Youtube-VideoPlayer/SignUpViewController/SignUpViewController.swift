//
//  SignUpViewController.swift
//  Youtube-VideoPlayer
//
//  Created by Ganesh Padole on 05/07/20.
//  Copyright © 2020 Ganesh Padole. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerUserButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerUser(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
                if let error = error {
                    self.showAlert(title: "Alert", message: error.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: "RegisterToYoutube", sender: self)
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
