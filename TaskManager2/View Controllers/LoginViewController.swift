//
//  Login.swift
//  TaskManager2
//
//  Created by Dakota Brown on 10/10/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Label.text = "Please enter your login credentials"
    }

    @IBAction func Login(_ sender: Any) {
        if Username.text == testUser.username || Password.text == testUser.password {
            testUser.loggedIn = true
        }
        
        if testUser.loggedIn == true {
            Label.text = "Login Successful"
            
            performSegue(withIdentifier: "LoginToTasks", sender: self)
            
        } else if testUser.loggedIn == false {
            Label.text = "Username or Password invalid."
        }
        
        Username.text = ""
        Password.text = ""

    }
}
