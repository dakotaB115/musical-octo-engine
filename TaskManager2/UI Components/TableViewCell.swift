//
//  TableViewCell.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/9/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var taskTypeLabel: UILabel!
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    @IBOutlet weak var taskDateLabel: UILabel!
    @IBOutlet weak var taskCompletionLabel: UILabel!
    
    var dateFormatter = DateFormatter()
    
    var task: Task? {
        didSet{
            if let task = task {
                dateFormatter.dateFormat = "MMM dd, yyyy"
                
                self.taskNameLabel.text = task.title
                self.taskTypeLabel.text = task.type
                self.taskDescriptionLabel.text = task.descrip
                self.taskDateLabel.text = dateFormatter.string(from: task.completeDate)
                taskCompletionLabel.backgroundColor = UIColor.red
            }
        }
    }

    @IBAction func turnInButton(_ sender: Any) {
        taskCompletionLabel.text = "Complete"
        taskCompletionLabel.backgroundColor = UIColor.green
    }
    
}
