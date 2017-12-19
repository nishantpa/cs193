//
//  ViewController.swift
//  Concentration
//
//  Created by Nishant Patel on 12/19/17.
//  Copyright © 2017 Nishant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var emojiChoices = ["🇮🇳", "👹", "🇮🇳", "👹"]
    
    // Update score
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
    }
    
    func flipCard(withEmoji emoji:String, on button: UIButton) {
        print("flipcard called with \(emoji)")
        if button.currentTitle == emoji {
            // When the card is faced up
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            // When the card must be faced down
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
