//
//  ViewController.swift
//  tipCalculator
//
//  Created by Malabed, Ceferino on 3/9/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Total: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var stepValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ratingChanged(stepper: UIStepper) {
        
        stepValueLabel.text = Int(stepper.value).description
        
        var tipPerc : Double = Double()
        if self.stepValueLabel.text == "1"
        {
            tipPerc = 0.1
        }
        else if self.stepValueLabel.text == "2"
        {
            tipPerc = 0.1
        }
        else if self.stepValueLabel.text == "3"
        {
            tipPerc = 0.1
        }
        else if self.stepValueLabel.text == "4"
        {
            tipPerc = 0.13
        }
        else if self.stepValueLabel.text == "5"
        {
            tipPerc = 0.13
        }
        else if self.stepValueLabel.text == "6"
        {
            tipPerc = 0.15
        }
        else if self.stepValueLabel.text == "7"
        {
            tipPerc = 0.15
        }
        else if self.stepValueLabel.text == "8"
        {
            tipPerc = 0.2
        }
        else if self.stepValueLabel.text == "9"
        {
            tipPerc = 0.20
        }
        else if self.stepValueLabel.text == "10"
        {
            tipPerc = 0.25
        }
        
        
        let value : Double = Double(Total.text!)!
        tipLabel.text = "Tip: $" + String(value * tipPerc) 
    }
    
    
    

}

