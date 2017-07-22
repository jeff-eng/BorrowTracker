//
//  ImageStore.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/21/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class ImageStore {
    
    let cache = NSCache<NSString,UIImage>()
    
    // Setting the image in cache
    func cacheImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    
    // Retrieving the image from cache
    func retrieveImage(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
    
    // Deleting the image from cache
    func removeImage(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
    }
}
