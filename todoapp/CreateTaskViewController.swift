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
    
    var previousVC = TaskViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func addTapped(_ sender: Any) {
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwtichField.isOn
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
        
    }
   
}
