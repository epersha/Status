//
//  ViewController.swift
//  Status
//
//  Created by Eric Persha on 6/8/15.
//  Copyright (c) 2015 Eric Persha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var updates: [Update]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
      // TODO: Sample data, remove when getting real data
        
        updates = [Update]()
        
        // user is the instance of the class User
        var user = User()
        user.username = "James"
        user.name = "James Martinez"
        user.bio = "Him"
        user.city = "San Francisco"
        user.link = "http://somewebsite.com"
        
        var update = Update()
        update.date = NSDate()
        update.text = "Hello, World"
        update.user = user
        
        // adding an update to the update array
        updates?.append(update)
        
    }

    // MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        // TODO: Return count of update items
        
        if let updatesCount = updates?.count {
            return updatesCount
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // TODO: Make this cell reusable
        var cell = UITableViewCell()
        if let updates = updates {
            var update = updates[indexPath.row]
            cell.textLabel?.text = update.text
        }
        return cell
    }

}










