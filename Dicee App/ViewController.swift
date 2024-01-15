//
//  ViewController.swift
//  Dicee App
//
//  Created by Evgeniy Zelinskiy on 15.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    let diceImageNamesArray = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        // After launch need to show random dice
        rollDice()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        rollDice()
    }
    
    func rollDice() {
        diceImageViewLeft.image = UIImage(named: diceImageNamesArray.randomElement()!)
        diceImageViewRight.image = UIImage(named: diceImageNamesArray.randomElement()!)
    }
}

