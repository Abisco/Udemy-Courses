//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Abbass-Ali Siwjee on 2014-10-01.
//  Copyright (c) 2014 SiwjeeCorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var number: UITextField!
    @IBOutlet var message: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        
        var numberGuessed = number.text.toInt()
        
        if ((numberGuessed) != nil) {
            var randomNumber = Int(arc4random() % 6)
            if (numberGuessed == randomNumber) {
                message.text = "CONGRATS! You Guessed Right! You guessed \(numberGuessed) and the computer guessed \(randomNumber)"
            } else {
                message.text = "Oh no! Guess Again! You guessed \(numberGuessed) and the computer guessed \(randomNumber)"
            }
        } else {
            message.text = "You must enter a number!";
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

