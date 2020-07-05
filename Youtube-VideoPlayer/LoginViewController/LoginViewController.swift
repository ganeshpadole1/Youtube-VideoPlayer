//
//  LoginViewController.swift
//  Youtube-VideoPlayer
//
//  Created by Ganesh Padole on 05/07/20.
//  Copyright © 2020 Ganesh Padole. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailtextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        if let email = emailtextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
              
                if let error = error {
                    self?.showAlert(title: "Alert", message: error.localizedDescription)
                } else {
                    self?.performSegue(withIdentifier: "LoginToYoutubeVideo", sender: self)
                }
              
            }
        }
    }
}
