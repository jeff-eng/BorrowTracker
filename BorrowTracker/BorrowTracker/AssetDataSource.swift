//
//  AssetDataSource.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/7/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class AssetDataSource: NSObject, UITableViewDataSource {
    
    var assets = [Asset]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BorrowedAssetCell", for: indexPath)
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "Overdue"
        case 1:
            return "Due Now"
        case 2:
            return "Due Soon"
        default:
            return nil
        }
    }
}
