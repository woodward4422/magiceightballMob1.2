//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Noah Woodward on 10/25/18.
//  Copyright © 2018 Noah Woodward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

       
        
        
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else {return}
        
        questionLabel.text = getRandomElement()
    }

    @IBAction func shakeButtonPressed(_ sender: Any) {

        questionLabel.text = getRandomElement()
    }
    
    func getRandomElement() -> String{
        return answers.randomElement() ?? ""
    }
    
    
}


