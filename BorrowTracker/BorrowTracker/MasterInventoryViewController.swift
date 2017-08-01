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
    
}
