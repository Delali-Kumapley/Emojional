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
    
    let customMessages =
        ["Sad face": ["I am so sorry to hear that!", "Take a deep breath", "Think of something that makes you feel happy!"],
         "Happy face": ["Well keep doing what you're doing!", "Find a way to brighten up someone else's day!", "That's great to hear!"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        
        if let selectedEmotion = sender.titleLabel?.text {
            let titleText = "Welcome to Emojional!"
            let messageText = emojis[selectedEmotion]!
            let number = Int.random(in : 0 ... 2)
    
            let emojiMessage = customMessages[emojis[selectedEmotion]!]?[number]
          
        let alertController = UIAlertController(title: "\(titleText)" , message: "\(emojiMessage!)", preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "Thanks!", style: UIAlertAction.Style.default, handler: nil))

            present(alertController, animated: true, completion: nil)
        
        }
    }
}

