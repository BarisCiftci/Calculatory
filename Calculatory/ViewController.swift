//
//  ViewController.swift
//  Calculatory
//
//  Created by Baris Ciftci on 02/09/2022.
//

import UIKit

class ViewController: UIViewController
{
    var first = ""
    var second = ""
    var function = ""
    var result: Double = 0
    var userInput = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func clearButton(_ sender: Any)
    {
        first = ""
        second = ""
        function = ""
        userInput = ""
        result = 0.0
        calculatorDisplay.text = "0"
    }
    
    @IBAction func devideButton(_ sender: Any)
    {
        function = "/"
        first = userInput
        userInput = ""
    }
    
    @IBAction func multiplyButton(_ sender: Any)
    {
        function = "*"
        first = userInput
        userInput = ""
    }
    
    @IBAction func minusButton(_ sender: Any)
    {
        function = "-"
        first = userInput
        userInput = ""
    }
    
    @IBAction func plusButton(_ sender: Any)
    {
        function = "+"
        first = userInput
        userInput = ""
    }
    
    @IBAction func equalButton(_ sender: Any)
    {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        
        if function == "+"
        {
            result = firstInput + secondInput
            calculatorDisplay.text = String(result)
        }
        else if function == "-"
        {
            result = firstInput - secondInput
            calculatorDisplay.text = String(result)
            
        }
        else if function == "*"
        {
            result = firstInput * secondInput
            calculatorDisplay.text = String(result)
            
        }
        else
        {
            result = firstInput / secondInput
            calculatorDisplay.text = String(result)
            
        }
    }
    
    
    
    


}

