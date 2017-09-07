//
//  InventoryDetailViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 8/4/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class InventoryDetailViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var image: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var descriptionText: UITextView!
    @IBOutlet var makeLabel: UITextField!
    @IBOutlet var modelLabel: UITextField!
    @IBOutlet var valueLabel: UITextField!
    @IBOutlet var serialNumberLabel: UITextField!
    
    // MARK: Class properties
    var asset: Asset!
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Call a method that triggers saving changes
        saveChanges()
        
    }
    
    func saveChanges() {
        // Update the model object (asset)
    }
    
}

