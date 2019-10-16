//
//  ViewController.swift
//  ex02
//
//  Created by Thabo MATLENANA on 2019/10/08.
//  Copyright © 2019 Thabo MATLENANA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func cancel(_ sender: Any) {
        Display.text = "";
    }
    
    @IBAction func negative(_ sender: Any) {
    }
    @IBAction func pencentage(_ sender: Any) {
        Display.text = "%";
        print("%");
    }
    @IBAction func plus(_ sender: Any) {
        Display.text = "+";
        print("+");
    }
    @IBAction func seven(_ sender: Any) {
        Display.text = "7";
        print("7");
    }
    @IBAction func eight(_ sender: Any) {
        Display.text = "8";
        print("8");
    }
    @IBAction func nine(_ sender: Any) {
        Display.text = "9";
        print("9");
    }
    @IBAction func divide(_ sender: Any) {
        Display.text = "/";
        print("/");
    }
    @IBAction func four(_ sender: Any) {
        Display.text = "4";
        print("4");
    }
    @IBAction func five(_ sender: Any) {
        Display.text = "5";
        print("5");
    }
    @IBAction func six(_ sender: Any) {
        Display.text = "6";
        print("6");
    }
    @IBAction func multiply(_ sender: Any) {
        Display.text = "*";
        print("*");
    }
    @IBAction func one(_ sender: Any) {
        Display.text = "1";
        print("1");
    }
    @IBAction func two(_ sender: Any) {
        Display.text = "2";
        print("2");
    }
    @IBAction func three(_ sender: Any) {
        Display.text = "3";
        print("3");
    }
    @IBAction func minus(_ sender: Any) {
        Display.text = "-";
        print("-");
    }
    @IBAction func zero(_ sender: Any) {
        Display.text = "0";
        print("0");
    }
    @IBAction func dot(_ sender: Any) {
        Display.text = ".";
        print(".");
    }
    @IBAction func equalto(_ sender: Any) {
        Display.text = "=";
        print("=");
    }
}
