//
//  ViewController.swift
//  tip
//
//  Created by Morgan Taylor on 10/8/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipCalculatorLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    
    @IBOutlet weak var Tip: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //Calculate tip and total
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        Tip.text = String(format: "$%.2f", tip)
        Total.text = String (format: "$%.2f", total)
    }
    
}
