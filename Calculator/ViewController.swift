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
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if  numbersAreBeingTyped{
            
            numberLabel.text = numberLabel.text! + sender.titleLabel!.text!
        }
        
        else{
            
            numberLabel.text=sender.titleLabel!.text
            numbersAreBeingTyped=true
            
        }
        
        
    }
    
    
    @IBAction func operators(_ sender: UIButton) {
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

