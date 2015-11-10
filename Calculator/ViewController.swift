//
//  ViewController.swift
//  Calculator
//
//  Created by Saad Ahmed on 2015-11-10.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userStartedTyping = false
    @IBOutlet weak var display: UILabel!
    
    var opStack: [Double] = []
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if !userStartedTyping{
            display.text = digit
            userStartedTyping = true
        }
        else{
            display.text = display.text! + digit
        }
    }
    
    
    @IBAction func enter() {
        userStartedTyping = false
        opStack.append(displayValue)
        print("opstack: " + opStack.description)
    }

    
    @IBAction func operate(sender: UIButton) {
        switch sender.currentTitle!{
        case "+": performOperation { $0 * $1 }
        case "-": performOperation { $1 - $0 }
        case "÷": performOperation { $0 / $1 }
        case "×": performOperation { $1 * $0 }
        default: break
        }
    }
    
    func performOperation(operation: (Double, Double)->Double ){
        if opStack.count >= 2{
            displayValue = operation(opStack.removeLast(), opStack.removeLast())
            enter()
        }
    }
    
    var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = "\(newValue)"
        }
    }

}

