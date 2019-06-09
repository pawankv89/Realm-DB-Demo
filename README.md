
Realm DB Demo
=========

## What is Realm?

Realm is a mobile database

Realm is a replacement for SQLite & Core Data.
It can save you thousands of lines of code & weeks of work,
and lets you craft amazing new user experiences.
------------
 Added Some screens here.
 
![](https://github.com/pawankv89/Realm-DB-Demo/blob/master/images/screen_1.png)
![](https://github.com/pawankv89/Realm-DB-Demo/blob/master/images/screen_2.png)
![](https://github.com/pawankv89/Realm-DB-Demo/blob/master/images/screen_3.png)
![](https://github.com/pawankv89/Realm-DB-Demo/blob/master/images/screen_4.png)


## Usage
------------
 You can add this method in your `UICollectionView`.


```objective-c

```

```swift

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



```


## References

https://realm.io/docs/swift/latest

https://forums.realm.io/


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
