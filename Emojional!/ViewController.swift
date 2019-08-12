//
//  ViewController.swift
//  Emojional!
//
//  Created by Delali Kumapley on 8/9/19.
//  Copyright © 2019 Delali Kumapley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["😔": "Sad face", "😄": "Happy face"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        
        if let selectedEmotion = sender.titleLabel?.text {
            let titleText = "Welcome to my first app!"
            let messageText = emojis[selectedEmotion]!
            
        let alertController = UIAlertController(title: "\(titleText)" , message: "\(messageText)", preferredStyle: UIAlertController.Style.alert)
            
            present(alertController, animated: true, completion: nil)
        
        }
    }
}

