//
//  ViewController.swift
//  Tipster
//
//  Created by Ngai, Sabrina on 3/20/16.
//  Copyright © 2016 Ngai, Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        //print("hey look, I'm editing this")
        
        let tipPecentages = [0.18, 0.20, 0.25]
        let tipPecentage = tipPecentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billTextField.text!).doubleValue
        let tip = billAmount * tipPecentage
        let total = billAmount + tip
        
        
        //tipLabel.text = "$\(tip)"
        //totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    //Connected to Tap Gesture. When tapped, dismiss keyboard / end editing
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

