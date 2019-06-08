//
//  ViewController.swift
//  Realm DB Demo
//
//  Created by Pawan kumar on 07/06/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit

class ViewController: UIViewController {
    var realm : Realm!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Get the default Realm
        realm = try! Realm()

        //Create Persion Object
        let person = Person()
        
        person.name = "Pawan"
        person.age = "25"
        person.phone = "9876543210"
        person.gender = "Male"
        person.location = "Noida"
        person.accountType = "iOS"
        
        //Inset Object in Realm DB
        try! realm.write {
            realm.add(person)
        }
        
        //Get All Person List
        let personRecordList = try! Realm().objects(Person.self)
        print("personRecordList:\(personRecordList)")
        
        
        // Delete an object with a transaction
        try! realm.write {
            realm.delete(person)
        }
        
        // Delete all objects from the realm
        try! realm.write {
            realm.deleteAll()
        }
        
    }
}

