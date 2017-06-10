//
//  ViewController.swift
//  todoapp
//
//  Created by qamarali on 5/26/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{


    @IBOutlet weak var tableView: UITableView!
    
    var tasks:[Task] = []
    var selectedIndex = 0
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
      
        tableView.dataSource = self
        tableView.delegate = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important{
            cell.textLabel?.text = "❗️\(task.name)"
        }
        else {
        cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func makeTask() -> [Task] {
        
        let task = Task()
        task.important = true
        task.name = "Roza"
        
        let task1 = Task()
        task1.important = true
        task1.name = "Namaz"
        
        let task2 = Task()
        task2.important = true
        task2.name = "Quran"
        
        let task3 = Task()
        task3.important = false
        task3.name = "timepass"

        
        return [task,task1,task2,task3]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "selectTaskSegue", sender: task)

    }


    
    @IBAction func plusTabs(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "addSegue" {
        let nextVC = segue.destination as!
        CreateTaskViewController
        nextVC.previousVC = self
    }
    
    if segue.identifier == "selectTaskSegue" {
        let nextVC = segue.destination as!
        CompleteTaskViewController
        nextVC.task = sender as! Task
        nextVC.previousVC = self
        
    }
 }
}

