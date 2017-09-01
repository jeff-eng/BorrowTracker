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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let asset = assets[indexPath.row]
        
        // Get a dequeued cell from the table view for re-use
        let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: "InventoryCell", for: indexPath)
        
        // TODO: Specify a custom table view cell class
        // If I can cast the dequeued cell as UITableViewCell, save it to constant named 'cell'
        if let cell = dequeuedCell as? UITableViewCell {
            // TODO: Set the object instance's property to the reference of the asset it refers to
            // cell.infoShownByThisCell = data.theDataTheCellNeedsToDisplayItsCustomLabelsEtc
        }
        
        return UITableViewCell()
        
    }
}
