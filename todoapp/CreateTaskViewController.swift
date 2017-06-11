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
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwtichField.isOn
       (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
     
        navigationController!.popViewController(animated: true)
        
        
    }
   
}
