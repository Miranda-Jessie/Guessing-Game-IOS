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
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let guessingGameVeiwController = segue.destination as? ViewController else
            {return}
            
            switch segue.identifier {
            case "CustomVeiwController":
                guessingGameVeiwController.guessesLeft = Int(customGuesses.text!)!
                guessingGameVeiwController.maximum = Int(customMaxNumber.text!)!
            default:
                break
            }
        }
}
