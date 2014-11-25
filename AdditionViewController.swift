//
//  AdditionViewController.swift
//  Innovative calculator
//
//  Created by jordan on 25/11/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class AdditionViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    var answer: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        num1TextField.resignFirstResponder()
        num2TextField.resignFirstResponder()
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func addButton(sender: AnyObject) {
        addition()
        answerLabel.text = NSString(format: "%0.2f", answer)
        answerLabel.hidden = false
        num1TextField.text = ""
        num2TextField.text = ""
    }
    func addition() {
        let num1AsNSString: NSString = num1TextField.text
        let num2AsNSString: NSString = num2TextField.text
        let num1 = num1AsNSString.floatValue
        let num2 = num2AsNSString.floatValue
        answer = num1 + num2
    }
}
