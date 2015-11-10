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
    
    
    @IBAction func enter(sender: UIButton) {
        //press enter
    }
    
    
    @IBAction func operate(sender: UIButton) {
        //operate
    }

}

