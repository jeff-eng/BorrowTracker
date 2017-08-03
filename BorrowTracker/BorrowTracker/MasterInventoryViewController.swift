//
//  MasterInventoryViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/31/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class MasterInventoryViewController: UIViewController {
    
    var imageStore: ImageStore?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let inventoryVC = segue.destination as? InventoryViewController {
            inventoryVC.imageStore = imageStore
        }
        
    }
    
    override func viewDidLoad() {
        // Turn off automatic scroll view inset adjustment to stop default behavior of creating an inset so that navigation and status bar don't obstruct the first row of table view
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
}
