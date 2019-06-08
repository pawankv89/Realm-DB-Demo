//
//  Person.swift
//  PKCoreData
//
//  Created by Pawan kumar on 7/5/17.
//  Copyright © 2017 Pawan kumar. All rights reserved.
//

import Foundation
import RealmSwift

// MARK: - Person

class Person: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var accountType = ""
    @objc dynamic var age = ""
    @objc dynamic var gender = ""
    @objc dynamic var phone = ""
    @objc dynamic var location = ""
    
}
