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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
    }

    // MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        // TODO: Return count of update items
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // TODO: Make this cell reusable
        var cell = UITableViewCell()
        return cell
    }

}

