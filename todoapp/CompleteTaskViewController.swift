//
//  CompleteTaskViewController.swift
//  todoapp
//
//  Created by qamarali on 6/9/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

  
    @IBOutlet weak var Label1: UILabel!
    
        var previousVC = TaskViewController()
    var task = Task()
    
    @IBAction func Done_Click(_ sender: Any) {
        
    previousVC.tasks.remove(at: previousVC.selectedIndex)
               previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
          Label1.text = task.name
        
        if task.important{
           Label1.text = "❗️\(task.name)"
        }
        else {
           Label1.text = task.name
        }

    }


}
