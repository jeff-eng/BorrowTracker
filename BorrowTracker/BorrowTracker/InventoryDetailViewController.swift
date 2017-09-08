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
    fileprivate var editingEnabled = false
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Call a method that triggers saving changes
        saveChanges()
        
    }
    
    @IBAction func toggleEditingMode(_ sender: UIBarButtonItem) {
        if editingEnabled {
            editingEnabled = false
            // disable editing of subviews
        } else {
            editingEnabled = true
            // enable editing of subviews
        }
        
    }
    
    private func saveChanges() {
        // Update the model object (asset)
    }
    
}

extension InventoryDetailViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if editingEnabled {
            return true
        } else {
            return false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
