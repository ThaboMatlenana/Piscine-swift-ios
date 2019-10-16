//
//  ViewController.swift
//  ex03
//
//  Created by Thabo MATLENANA on 2019/10/09.
//  Copyright © 2019 Thabo MATLENANA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var firstNumber : String = "0", secondNumber : String = "0", Operator : String = "";
    var result:Int = 0;
    var turn:Int = 0;

    @IBOutlet weak var Display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ac(_ sender: Any) {
        Display.text = "";
        turn = 0;
        firstNumber = "0";
        secondNumber = "0";
        Operator = "";
    }
    
    @IBAction func ng(_ sender: Any) {
//        Display.text = "";
    }
    @IBAction func percent(_ sender: Any) {
        Display.text = "%";
        Operator = "%";
    }
    @IBAction func minus(_ sender: Any) {
        Display.text = "-";
        Operator = "-";
    }
    @IBAction func seven(_ sender: Any) {
        Display.text =  String(Display.text!) + "7";
        addNumber(number: "7");
    }
    
    func addNumber(number: String)
    {
        if (Operator.count > 0)
        {
            secondNumber += number;
        }
        else
        {
            firstNumber += number;
        }
    }
    
    func calculate()
    {
        if (!firstNumber.isEmpty && !secondNumber.isEmpty && !Operator.isEmpty && turn == 0)
        {
            switch Operator {
            case "+":
                result = result + (Int(firstNumber)! + Int(secondNumber)!);
                break;
            case "-":
                result = result + (Int(firstNumber)! - Int(secondNumber)!);
                break;
            case "*":
                result = result + (Int(firstNumber)! * Int(secondNumber)!);
                break;
            case "/":
                result = result + (Int(firstNumber)! / Int(secondNumber)!);
                break;
            case "%":
                result = result + (Int(firstNumber)! % Int(secondNumber)!);
                break;
            default:
                break;
            }
            turn += 1;
        }
        else if (!firstNumber.isEmpty && !Operator.isEmpty)
        {
            switch Operator {
            case "+":
                result = result + (Int(firstNumber)!);
                break;
            case "-":
                result = result - (Int(firstNumber)!);
                break;
            case "*":
                result = result * (Int(firstNumber)!);
                break;
            case "/":
                result = result / (Int(firstNumber)!);
                break;
            case "%":
                result = result % (Int(firstNumber)!);
                break;
            default:
                break;
            }
        }
        firstNumber = "";
        secondNumber = "";
        Operator = "";
    }
    
    @IBAction func eight(_ sender: Any) {
        Display.text =  String(Display.text!) + "8";
        addNumber(number: "8");
    }
    @IBAction func nine(_ sender: Any) {
        Display.text =  String(Display.text!) + "9";
        addNumber(number: "9");
    }
    @IBAction func divide(_ sender: Any) {
        Display.text = "/";
        Operator = "/";
    }
    @IBAction func four(_ sender: Any) {
        Display.text = String(Display.text!) + "4";
        addNumber(number: "4");
    }
    @IBAction func five(_ sender: Any) {
        Display.text = String(Display.text!) + "5";
        addNumber(number: "5");
    }
    @IBAction func six(_ sender: Any) {
        Display.text =  String(Display.text!) + "6";
        addNumber(number: "6");
    }
    @IBAction func multiply(_ sender: Any) {
        Display.text =  "*";
        Operator = "*";
    }
    @IBAction func one(_ sender: Any) {
        Display.text =  String(Display.text!) + "1";
        addNumber(number: "1");
    }
    @IBAction func two(_ sender: Any) {
        Display.text =  String(Display.text!) + "2";
        addNumber(number: "2");
    }
    @IBAction func three(_ sender: Any) {
        Display.text =  String(Display.text!) + "3";
        addNumber(number: "3");
    }
    @IBAction func plus(_ sender: Any) {
        Display.text = "+";
        Operator = "+";
    }
    @IBAction func zero(_ sender: Any) {
        Display.text =  String(Display.text!) + "0";
        addNumber(number: "0");
    }
    @IBAction func dot(_ sender: Any) {
        Display.text = ".";
    }
    @IBAction func equal(_ sender: Any) {
        Display.text = "= ";
        calculate();
        let resultString = String(result);
        Display.text! += resultString;
    }
}


