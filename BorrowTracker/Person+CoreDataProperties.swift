//
//  Person+CoreDataProperties.swift
//  BorrowTracker
//
//  Created by Jeffrey Eng on 7/6/17.
//  Copyright © 2017 Jeffrey Eng. All rights reserved.
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var lastName: String?
    @NSManaged public var firstName: String?
    @NSManaged public var borrowedAssets: NSSet?

}

// MARK: Generated accessors for borrowedAssets
extension Person {

    @objc(addBorrowedAssetsObject:)
    @NSManaged public func addToBorrowedAssets(_ value: Asset)

    @objc(removeBorrowedAssetsObject:)
    @NSManaged public func removeFromBorrowedAssets(_ value: Asset)

    @objc(addBorrowedAssets:)
    @NSManaged public func addToBorrowedAssets(_ values: NSSet)

    @objc(removeBorrowedAssets:)
    @NSManaged public func removeFromBorrowedAssets(_ values: NSSet)

}
