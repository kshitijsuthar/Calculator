//
//  ViewController.swift
//  Calculator
//
//  Created by Kshitij Suthar on 2017-09-14.
//  Copyright © 2017 Kshitij Suthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var numbersAreBeingTyped = false;
    var displayedNumber:Float=0
    var firstNumber:Float=0
    var arithmeticOperators = 0
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if  numbersAreBeingTyped{
            
            numberLabel.text = numberLabel.text! + sender.titleLabel!.text!
            displayedNumber = Float(numberLabel.text!)!
            
        }
        
        else{
            
            numberLabel.text=sender.titleLabel!.text!
            displayedNumber = Float(numberLabel.text!)!
            numbersAreBeingTyped=true
            
        }
        
        
    }
    
    
    @IBAction func operators(_ sender: UIButton) {
        
        
        if numberLabel.text != ""  && sender.tag != 15  {
            
            firstNumber = Float(numberLabel.text!)!
            
            arithmeticOperators = sender.tag
            numbersAreBeingTyped = false
            
        }
        
        else if sender.tag == 15 {
            
            if arithmeticOperators == 14 {
                numberLabel.text = String(firstNumber + displayedNumber)
            }
            
           else if arithmeticOperators == 13 {
                numberLabel.text = String(firstNumber - displayedNumber)
            }
           
            else if arithmeticOperators == 12 {
                numberLabel.text = String(firstNumber * displayedNumber)
            }
            
            else if arithmeticOperators == 11 {
                numberLabel.text = String(firstNumber / displayedNumber)
            }
        }
        
        
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        
       firstNumber = 0
        numberLabel.text = "0"
        numbersAreBeingTyped=false
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

