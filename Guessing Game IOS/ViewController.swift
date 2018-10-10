//
//  ViewController.swift
//  Guessing Game IOS
//
//  Created by Miranda Jessie on 10/9/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var GuessTextField: UITextField!
    @IBOutlet weak var GuessButton: UIButton!
    @IBOutlet weak var FeedbackLabel: UILabel!
    @IBOutlet weak var GuessesLeftLabel: UILabel!
    
    @IBAction func GuessButtonTapped(_ sender: Any) {
        guesses -= 1
        GuessesLeftLabel.text = "\(guesses) guesses remaining"
    }
    
    let randomNumber = Int.random(in: 1...100)
    var guesses = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

