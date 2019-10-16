//
//  ViewController.swift
//  ex01
//
//  Created by Thabo MATLENANA on 2019/10/08.
//  Copyright © 2019 Thabo MATLENANA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        displayLabel.text = "Hello World !";
    }
    
}

