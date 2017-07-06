//
//  Asset+CoreDataProperties.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/6/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import Foundation
import CoreData


extension Asset {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Asset> {
        return NSFetchRequest<Asset>(entityName: "Asset")
    }

    @NSManaged public var name: String?
    @NSManaged public var checkedOut: Bool
    @NSManaged public var image: NSData?
    @NSManaged public var checkoutDate: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var serialNumber: String?
    @NSManaged public var value: Double
    @NSManaged public var make: String?
    @NSManaged public var model: String?
    @NSManaged public var borrower: Person?

}
