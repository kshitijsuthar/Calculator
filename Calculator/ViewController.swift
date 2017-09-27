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
    
    var operationsAreBeingPerformed = false;   //Bool variable created to make sure if user is performing operations or not
    var displayedNumber:Double=0             //This variable is created to store the number on the display
    var firstNumber:Double=0                        //This variable is created to store the previously entered number
    var arithmeticOperators = 0                 //This variable is created to store arithmetic operator whilst user is entering second number
    
    var decimal:Bool = false
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if  operationsAreBeingPerformed{
            

            
            
            numberLabel.text = numberLabel.text! + sender.titleLabel!.text!              // this keeps adding the number on screen as buttons are tapped
            displayedNumber = Double(numberLabel.text!)!                             // Stores the first number
          
            
        }
        
        else{
            
            if  numberLabel.text == String(0)   {
                if sender.tag == 16 {                                                                       // . button is assigned with tag number 16
                    
                    numberLabel.text  = "0."
                    decimal = true
                    
                }
            }
                
            else    {
                if sender.tag == 16 {
                    if  decimal == false{
                        numberLabel.text  =  numberLabel.text!  +  "."
                        decimal = true
                    }
                }
            }
            
            numberLabel.text=sender.titleLabel!.text!
            displayedNumber = Double(numberLabel.text!)!                         // The number that is being displayed on the screen is stored here
            operationsAreBeingPerformed=true
            
            
            
           }
        
        
    }
    
    
    @IBAction func operators(_ sender: UIButton) {
        
        
        if numberLabel.text != ""  && sender.tag != 15  {                                       //Tag number 15 is assigned to equals button
            
            firstNumber = Double(numberLabel.text!)!
            
            arithmeticOperators = sender.tag                                                               //The operator that is selected is stored here
            operationsAreBeingPerformed = false
            
        }
        
        else if sender.tag == 15 {
            
            if arithmeticOperators == 14 {                                                                          //Tag number 14 is assigned to addition button
                numberLabel.text = String(firstNumber + displayedNumber)
            }
            
           else if arithmeticOperators == 13 {                                                                      //Tag number 14 is assigned to substraction button
                numberLabel.text = String(firstNumber - displayedNumber)
            }
           
            else if arithmeticOperators == 12 {                                                                     //Tag number 14 is assigned to multiplication button
                numberLabel.text = String(firstNumber * displayedNumber)
            }
            
            else if arithmeticOperators == 11 {                                                                     //Tag number 14 is assigned to division button
                numberLabel.text = String(firstNumber / displayedNumber)
            }
        }
        
        decimal = false
        
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        
       firstNumber = 0
        numberLabel.text = "0"
        operationsAreBeingPerformed=false
        decimal =  false
        
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

