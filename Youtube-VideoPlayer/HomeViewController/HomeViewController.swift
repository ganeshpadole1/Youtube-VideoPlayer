//
//  HomeViewController.swift
//  Youtube-VideoPlayer
//
//  Created by Ganesh Padole on 05/07/20.
//  Copyright © 2020 Ganesh Padole. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "🥰Youtube-Video Player"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1.0
        }
    
    }
    
}
