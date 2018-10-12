//
//  Tasks.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/10/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

class Tasks: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var taskTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        taskTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskManager.sharedInstance.getTaskCount()
    }
    
/*
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 
    }
*/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! TableViewCell
        let taskForIndex = TaskManager.sharedInstance.getTask(at: indexPath.row)
        cell.task = taskForIndex
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let task = TaskManager.sharedInstance.getTask(at: indexPath.row)
        
        let deleteTask = UITableViewRowAction(style: .destructive, title: "Delete") {_,_ in
            let taskForIndex = TaskManager.sharedInstance.getTask(at: indexPath.row)
            TaskManager.sharedInstance.removeTask(taskForIndex)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        return [deleteTask]
    }
    
    @IBAction func LogoutButton(_ sender: Any) {
        performSegue(withIdentifier: "TasksToLogin", sender: self)
        testUser.loggedIn = false
        
        
    }
    
    @IBAction func unwindToTasks(_ segue: UIStoryboardSegue) { }
    
}
