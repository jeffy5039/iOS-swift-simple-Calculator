//
//  SubtractionViewController.swift
//  Innovative calculator
//
//  Created by jordan on 25/11/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class SubtractionViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    var answer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        num1TextField.resignFirstResponder()
        num2TextField.resignFirstResponder()
    }
    
    @IBAction func minusButton(sender: AnyObject) {
        subtraction()
        answerLabel.text = "\(answer)"
        answerLabel.hidden = false
        num1TextField.text = ""
        num2TextField.text = ""
    }
    func subtraction() {
        let num1AsString = num1TextField.text
        let num2AsString = num2TextField.text
        let num1 = num1AsString.toInt()!
        let num2 = num2AsString.toInt()!
        
        answer = num1 - num2
    }
    
}
