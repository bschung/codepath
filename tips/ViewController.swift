//
//  ViewController.swift
//  tips
//
//  Created by Brenda Chung on 1/11/16.
//  Copyright © 2016 Brenda Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalForTwoLabel: UILabel!
    
    @IBOutlet weak var totalForThreeLabel: UILabel!
    
    @IBOutlet weak var totalForFourLabel: UILabel!
    
    @IBOutlet weak var resultView: UIView!
    
    @IBOutlet weak var amountView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        totalForTwoLabel.text = "$0.00"
        totalForThreeLabel.text = "$0.00"
        totalForFourLabel.text = "$0.00"
        
        billField.becomeFirstResponder()
        
        self.resultView.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChange(sender: AnyObject) {
        var tipPercentages = [0.15, 0.18, 0.2, 0.22, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var totalForTwo = total/2
        var totalForThree = total/3
        var totalForFour = total/4
        
        tipLabel.text = "\(tip)"
        totalLabel.text = "\(total)"
        totalForTwoLabel.text = "\(totalForTwo)"
        totalForThreeLabel.text = "\(totalForThree)"
        totalForFourLabel.text = "\(totalForFour)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalForTwoLabel.text = String(format: "$%.2f", totalForTwo)
        totalForThreeLabel.text = String(format: "$%.2f", totalForThree)
        totalForFourLabel.text = String(format: "$%.2f", totalForFour)
        
        UIView.animateWithDuration(1.0, animations: {
            self.amountView.frame = CGRectMake(
                self.amountView.frame.origin.x,
                -20,
                self.amountView.frame.size.height,
                self.amountView.frame.size.width)
        })
        
        UIView.animateWithDuration(1.0, animations: {
            self.resultView.alpha = 1
            self.resultView.frame = CGRectMake(
                self.resultView.frame.origin.x,
                60,
                self.resultView.frame.size.height,
                self.resultView.frame.size.width)
        })

    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
}