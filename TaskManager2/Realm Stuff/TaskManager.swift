//
//  TaskManager.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/10/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation
import RealmSwift

final class TaskManager {
    
    static let sharedInstance = TaskManager()
    
    let realm = try! Realm()
    
    var tasks: Results<Task>
    
    let calander = Calendar.current
    
    private init() {
        tasks = realm.objects(Task.self).sorted(byKeyPath: "isComplete")
    }
    
    func addTask(_ task: Task) {
        try! realm.write {
            realm.add(task)
            print("Task added")
        }
    }
    
    func removeTask(_ task: Task) {
        try! realm.write {
            realm.delete(task)
        }
    }
    
    func getTask(at index: Int) -> Task {
        return tasks[index]
    }
    
    func getTaskCount() -> Int {
        return tasks.count
    }
    
}
