//
//  Select Difficulty View Controller.swift
//  Guessing Game IOS
//
//  Created by Miranda Jessie on 10/11/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import UIKit

class SelectDifficultyViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let guessingGameviewController = segue.destination as? ViewController else
        { return }
        
        switch segue.identifier {
        case "EasyToGuessingGame":
            //Max 50
            guessingGameviewController.maximum = 50
            
        case "MediumToGuessingGame":
            //Max 100
            guessingGameviewController.maximum = 100
            
        case "HardToGuessingGame":
            //Max 500
            guessingGameviewController.maximum = 500
            
        default:
            break
            
        }
    }
}
