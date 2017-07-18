//
//  NewAssetViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/17/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class NewAssetViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        
        imageView.isUserInteractionEnabled = true
        let imageViewTapGesture = UITapGestureRecognizer(target: self, action: #selector(self.selectAssetImage))
        imageView.addGestureRecognizer(imageViewTapGesture)
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

extension NewAssetViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func selectAssetImage(_ sender: UITapGestureRecognizer) {
        // Create instance of UIImagePickerController
        let imagePicker = UIImagePickerController()
        
        // If the device has a camera, allow user to use camera to take picture and set as the asset's image
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        } else {
            imagePicker.sourceType = .photoLibrary
        }
        
        // We need to set the delegate to the NewAssetViewController so this class can receive messages whether they selected an iamge or cancelled out of it
        imagePicker.delegate = self
        
        // Present image picker
        present(imagePicker, animated: true, completion: nil)
    }
    
}
