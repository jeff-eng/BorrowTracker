//
//  NewAssetViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/17/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class NewAssetViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Abort New Item", message: "Are you sure you want to exit item creation?", preferredStyle: .actionSheet)
        let confirmAction = UIAlertAction(title: "Yes", style: .cancel) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "No", style: .default, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        
        present(alertController, animated: true, completion: nil)
    }

    func dismissKeyboard(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    
}
