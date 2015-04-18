//
//  SecondViewController.swift
//  To Do List
//
//  Created by Abbass-ali Siwjee on 2015-03-26.
//  Copyright (c) 2015 Abbass-ali Siwjee. All rights reserved.
//

import UIKit
    struct toDoItem {
        var name: String
        var desc: String
    }

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameOfItem: UITextField!
    @IBOutlet weak var descOfItem: UITextField!
    @IBOutlet weak var outputMessage: UILabel!
    
    


    @IBAction func addItems(sender: AnyObject) {
        let newItem = toDoItem(name: nameOfItem.text, desc: descOfItem.text)
        cellContent.append(nameOfItem.text)
        nameOfItem.text = ""
        descOfItem.text = ""
        
        //Save permenantly the list cellcontent with key todolist
        NSUserDefaults.standardUserDefaults().setObject(cellContent, forKey: "toDoList")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //need these 2 lines for the keyboard going away as well
        self.nameOfItem.delegate = self
        self.descOfItem.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //these next 2 functions are for keyboard, making it go away with enter or return
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }


}

