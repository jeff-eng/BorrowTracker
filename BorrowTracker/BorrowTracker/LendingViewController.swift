//
//  LendingViewController.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/7/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import UIKit

class LendingViewController: UITableViewController {
    
    let assetDataSource = AssetDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = assetDataSource
        tableView.delegate = self
    }
}


