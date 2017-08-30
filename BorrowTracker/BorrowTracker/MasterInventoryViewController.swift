//
//  MasterInventoryViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/31/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class MasterInventoryViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var imageStore: ImageStore?
    let inventoryDataSource = InventoryDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = inventoryDataSource
        
        // Turn off automatic scroll view inset adjustment to stop default behavior of creating an inset so that navigation and status bar don't obstruct the first row of table view
        self.automaticallyAdjustsScrollViewInsets = false
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}

extension MasterInventoryViewController: UITableViewDelegate {
    // all methods in UITableViewDelegate protocol are optional
}
