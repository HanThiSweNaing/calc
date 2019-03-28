//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false;
    var operation = 0;

precendence ExponentiationProcedence {
asscoiativity : left
higherThan: MultiplicationPrcedence

        if performingMath == true
        {
            label.text = String(sender.tag-1);
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else
        {
       //display the number that is pressed
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        }
    
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(label.text!)!
            if sender.tag == 12 // /
            {
                label.text = "/";
            }
            else if sender.tag == 13 // X
            {
                label.text = "x";
            }
            else if sender.tag == 14 // -
            {
                label.text = "-";
            }
            else if sender.tag == 15  //+
            {
                //display the + sign
                label.text = "+";
            }
        
            operation = sender.tag;
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 15
            {
                label.text = String(previousNumber + numberOnScreen)
            }
            if operation == 14
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            if operation == 13
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            if operation == 12
            {
                label.text = String(previousNumber / numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text="";
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }


