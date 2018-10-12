//
//  NewTask.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/10/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

class NewTask: UIViewController {
    
    @IBOutlet weak var TaskNameTextField: UITextField!
    @IBOutlet weak var TaskTypeTextField: UITextField!
    @IBOutlet weak var TaskDescriptionTextField: UITextField!
    @IBOutlet weak var CompleteByDate: UIDatePicker!
    
    func displayError(title: String, message: String) {
        let title = title
        let message = message
        let action = UIAlertAction(title: "Ok", style: .default) { _ in
            self.dismiss(animated: true)
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(action)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func SaveButton(_ sender: Any) {
        
        guard let taskTitle = TaskNameTextField.text, !taskTitle.isEmpty else {
            displayError(title: "Missing Title", message: "Please enter a title.")
            return
        }
        
        guard let taskType = TaskTypeTextField.text, !taskType.isEmpty else {
            displayError(title: "Missing Type", message: "Please enter a type.")
            return
        }
        
        guard let taskDescrip = TaskDescriptionTextField.text, !taskDescrip.isEmpty else {
            displayError(title: "Missing Description", message: "Please enter a description.")
            return
        }
        
        let completeBy = CompleteByDate.date
        
        let newTask = Task()
        newTask.title = taskTitle
        newTask.type = taskType
        newTask.descrip = taskDescrip
        newTask.completeDate = completeBy
        
        TaskManager.sharedInstance.addTask(newTask)
        
        self.performSegue(withIdentifier: "unwindToTasks", sender: self)
    }
    
    @IBAction func CancelButton(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToTasks", sender: self)
    }
    
    
}
