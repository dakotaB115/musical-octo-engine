//
//  Task.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/9/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var type: String = ""
    @objc dynamic var descrip: String = ""
    @objc dynamic var isComplete: Bool = false
    @objc dynamic var completeDate: Date = Date()
}
