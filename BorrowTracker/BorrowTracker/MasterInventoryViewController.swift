//
//  MasterInventoryViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/31/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class MasterInventoryViewController: UIViewController {
    
    let imageStore: ImageStore = {
        // Get a reference to the AppDelegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // Reference the AppDelegate's ImageStore instance
        let imageStore = appDelegate.imageStore!
    
        return imageStore
    }()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let inventoryVC = segue.destination as? InventoryViewController {
            inventoryVC.imageStore = self.imageStore
        }
        
    }
    
}
