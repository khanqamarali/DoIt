//
//  CreateTaskViewController.swift
//  todoapp
//
//  Created by qamarali on 6/3/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwtichField: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func addTapped(_ sender: Any) {
    }
   
}
