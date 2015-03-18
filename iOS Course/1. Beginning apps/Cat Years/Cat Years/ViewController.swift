//
//  ViewController.swift
//  Cat Years
//
//  Created by Abbass-Ali Siwjee on 2014-09-30.
//  Copyright (c) 2014 SiwjeeCorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var CatsAgeLabel: UILabel!
    @IBOutlet var AgeInputted: UITextField!
    
    @IBAction func CalculateButton(sender: AnyObject) {
        println("Calculating the age!")
        println("The inputted age of the cat is \(AgeInputted.text)")
        
        let number = AgeInputted.text.toInt() ?? 0
        let catAge = number * 7
        println("The Cat Years age is \(catAge)")
        
        CatsAgeLabel.text = "Your cats Cat Age is \(catAge)"
        
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

