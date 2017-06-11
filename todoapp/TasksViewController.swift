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

    
    override func viewDidLoad(){
        super.viewDidLoad()
        
      
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        getTask()
        tableView.reloadData()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important{
            cell.textLabel?.text = "❗️\(task.name!)"
        }
        else {
        cell.textLabel?.text = task.name!
        }
        
        return cell
    }
    
    func getTask(){
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
        tasks =  try context.fetch(Task.fetchRequest()) as! [Task]
           
        } catch {
            print("Error Occured")
        }
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "selectTaskSegue", sender: task)

    }


    
    @IBAction func plusTabs(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "addSegue" {
        
        
    }
    
    if segue.identifier == "selectTaskSegue" {
        let nextVC = segue.destination as!
        CompleteTaskViewController
        nextVC.task = sender as! Task
        nextVC.previousVC = self
        
    }
 }
}

