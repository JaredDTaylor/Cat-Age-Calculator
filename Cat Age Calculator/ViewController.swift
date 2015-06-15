//
//  ViewController.swift
//  Cat Age Calculator
//
//  Created by Jared Taylor on 6/10/15.
//  Copyright (c) 2015 Jared Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblCalcAge: UILabel!
    @IBOutlet var txtAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Submit(sender: AnyObject) {
        println("Hello World!")
        var enteredAge = txtAge.text.toInt()
        if enteredAge != nil {
            var catYears = enteredAge! * 7
            // var declares a variable
            // adding the ! tells xcode that the error is ok
            lblCalcAge.text = "Your cat is \(catYears) in cat years."
        }else{
            lblCalcAge.text = "Please enter a number in the box."
        }
        
    }
}

