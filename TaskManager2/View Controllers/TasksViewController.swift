//
//  Tasks.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/10/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

class Tasks: UIViewController {

    @IBOutlet weak var taskTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taskTableView.reloadData()
    }

}
