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
        
        let imageOptionActionSheet = UIAlertController(title: "Select An Option", message: "Please select either camera or photo library to choose your asset's image", preferredStyle: .actionSheet)
        
        // Create UIAlertActions for selecting either camera or the photo library
        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { (action) in
            // Check if the device has a camera
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true, completion: nil)
            } else {
                // Alert user that device has no camera
                let noCameraAlert = UIAlertController(title: "Error", message: "We were unable to detect a camera on your device. Choose from your photo library.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                    self.presentPhotoLibraryInterface(alert: action, imagePicker: imagePicker)
                })
                noCameraAlert.addAction(okAction)
                self.present(noCameraAlert, animated: true, completion: nil)
            }

        })
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { (action) in

            self.presentPhotoLibraryInterface(alert: action, imagePicker: imagePicker)
        })
        
        // Add actions to the alert controller
        imageOptionActionSheet.addAction(cameraAction)
        imageOptionActionSheet.addAction(photoLibraryAction)
        
        present(imageOptionActionSheet, animated: true, completion: nil)
        
        // We need to set the delegate to the NewAssetViewController so this class can receive messages whether they selected an image or cancelled out of it
        imagePicker.delegate = self
        
    }
    
    private func presentPhotoLibraryInterface(alert action: UIAlertAction, imagePicker controller: UIImagePickerController) {
        controller.sourceType = .photoLibrary
        self.present(controller, animated: true, completion: nil)
    }
        
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // Get the image from the info dictionary
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Display the image
        imageView.image = image
        
        // Dimiss the image picker
        dismiss(animated: true, completion: nil)
        
    }
    
}
