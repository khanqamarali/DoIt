//
//  CompleteTaskViewController.swift
//  todoapp
//
//  Created by qamarali on 6/9/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    @IBOutlet weak var getselectedValue: UILabel!
    
    var task = Task()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getselectedValue.text = "Yahoo"
        
    }


}
