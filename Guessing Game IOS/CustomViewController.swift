//
//  CustomViewController.swift
//  Guessing Game IOS
//
//  Created by Miranda Jessie on 10/12/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import UIKit
class CustomVeiwController: UIViewController {
    
        //Custom IBOutlets
        @IBOutlet weak var customMaxNumber: UITextField!
        @IBOutlet weak var customGuesses: UITextField!
        @IBOutlet weak var startButton: UIButton!
    
    //Mark: Actions
    @IBAction func startButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "CustomtoView", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let guessingGameViewController = segue.destination as?  ViewController else
        {return}
        switch segue.identifier {
        case "CustomtoView":
            guessingGameViewController.minimum = 1
            guessingGameViewController.maximum = (Int(customMaxNumber.text!)!)
            guessingGameViewController.guessesLeft = (Int(customGuesses.text!)!)
        default:
            break
        }
        
        
    }
}
