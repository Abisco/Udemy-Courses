//
//  FirstViewController.swift
//  To Do List
//
//  Created by Abbass-ali Siwjee on 2015-03-26.
//  Copyright (c) 2015 Abbass-ali Siwjee. All rights reserved.
//

import UIKit

var toDoList = [toDoItem].self
var cellContent = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //check if the key we want exists, if so, read it in to the cell content list we have with the key todoList (perm storage)
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            cellContent = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        cellContent.removeAtIndex(indexPath.row)
        NSUserDefaults.standardUserDefaults().setObject(cellContent, forKey: "toDoList")
        toDoListTable.reloadData()
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }


}

