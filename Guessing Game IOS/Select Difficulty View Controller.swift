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
        guard let selectDifficultyViewController = segue.destination as? SelectDifficultyViewController else
        { return }
        
        switch segue.identifier {
        case "EasyToGuessingGame":
            //Min 1
            //Max 50
            //Number guesses 5
            break
        case "MediumToGuessingGame":
            //Min 1
            //Max 100
            //Number guesses 5
            break
        case "HardToGuessingGame":
            //Min 1
            //Max 500
            //Number guesses 5
            break
            
        default:
            break
            
        }
    }
}
