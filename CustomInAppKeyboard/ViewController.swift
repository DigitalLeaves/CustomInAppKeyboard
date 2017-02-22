//
//  ViewController.swift
//  CustomInAppKeyboard
//
//  Created by Ignacio Nieto Carvajal on 17/12/16.
//  Copyright © 2016 Ignacio Nieto Carvajal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NumericKeyboardDelegate, UITextFieldDelegate {
    // outlets
    @IBOutlet weak var normalTextfield: UITextField!
    @IBOutlet weak var customNumericTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        customNumericTextfield.setAsNumericKeyboard(delegate: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numericKeyPressed(key: Int) {
        print("Numeric key \(key) pressed!")
    }
    
    func numericBackspacePressed() {
        print("Backspace pressed!")
    }
    
    func numericSymbolPressed(symbol: String) {
        print("Symbol \(symbol) pressed!")
    }
    
    // MARK: - UITextfieldDelegate: switch between textfields.
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == normalTextfield {
            customNumericTextfield.becomeFirstResponder()
        } else if textField == customNumericTextfield {
            normalTextfield.becomeFirstResponder()
        }
        
        return false
    }
}

