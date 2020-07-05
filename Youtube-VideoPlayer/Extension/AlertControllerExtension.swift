//
//  AlertControllerExtension.swift
//  Youtube-VideoPlayer
//
//  Created by Ganesh Padole on 05/07/20.
//  Copyright © 2020 Ganesh Padole. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
    }
}
