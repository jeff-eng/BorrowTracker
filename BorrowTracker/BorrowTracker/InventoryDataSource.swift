//
//  InventoryDataSource.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 8/1/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class InventoryDataSource: NSObject, UITableViewDataSource {
    
    var assets = [Asset]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "InventoryCell", for: indexPath)
        
        return cell
        
    }
}
