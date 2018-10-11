//
//  User.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/9/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation
import RealmSwift

class User {
    let username: String
    let password: String
    var loggedIn: Bool
    
    init(username: String, password: String, loggedIn: Bool){
        self.username = username
        self.password = password
        self.loggedIn = loggedIn
    }
}

