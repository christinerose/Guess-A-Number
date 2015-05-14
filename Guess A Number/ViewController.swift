//
//  ViewController.swift
//  Guess A Number
//
//  Created by Christine Rose on 5/14/15.
//  Copyright (c) 2015 Christine Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var resultsField: UILabel!
    
    @IBAction func submitNumber(sender: AnyObject) {
        
        var computerNumber = arc4random_uniform(11)
        //arc4random is a U-INT32...MUST BE CONVERTED TO INT
        
        var enteredGuess = numberInput.text.toInt()
        
        if enteredGuess != nil {
            
            if enteredGuess > 10 {
                resultsField.text = "Please enter a whole number 0 - 10"
            }
            
            //CONVERTING U-INT32:
            else if enteredGuess != Int(computerNumber) {
                
                println(computerNumber)
                
                resultsField.text = "Nope! It was \(computerNumber)"
                
            } else {
                
                println(computerNumber)
                
                resultsField.text = "You guessed right! YOU ROCK!"
            }
            
        } else {
            resultsField.text = "Please enter a whole number 0 - 10"
        }
        
                println(numberInput.text)
        
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

