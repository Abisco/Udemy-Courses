//
//  ViewController.swift
//  Udemy iOS8 Course - First Video
//
//  Created by Abbass-Ali Siwjee on 2014-09-25.
//  Copyright (c) 2014 SiwjeeCorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        println("Hello world!")
        
        myLabel.text = "It Worked!"
        
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

