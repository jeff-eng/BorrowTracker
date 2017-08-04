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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "InventoryDetailVC"?:
            if let row = tableView.indexPathForSelectedRow?.row, row != inventoryDataSource.assets.count {
                // Get the item at the index path that corresponds with the row
                let asset = inventoryDataSource.assets[row]
                let inventoryDetailViewController = segue.destination as! InventoryDetailViewController
                inventoryDetailViewController.asset = asset
            }
            
        default:
            preconditionFailure("Unexpected segue identifier.")
        }
    }
    

    
}
