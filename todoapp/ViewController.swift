//
//  ViewController.swift
//  todoapp
//
//  Created by qamarali on 5/26/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.dataSource = self
        
        
    }


}

