//
//  InventoryViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/21/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class InventoryViewController: UITableViewController {
    
    var imageStore: ImageStore!
    let inventoryDataSource = InventoryDataSource()
    
    override func viewDidLoad() {
        tableView.dataSource = inventoryDataSource
        tableView.delegate = self
        
    }
    
}
