//
//  UITextfield+NumericKeyboard.swift
//  Zipwire Location Validator
//
//  Created by Ignacio Nieto Carvajal on 13/10/16.
//  Copyright © 2016 Zipwire. All rights reserved.
//

import UIKit

private var numericKeyboardDelegate: NumericKeyboardDelegate? = nil

extension UITextField: NumericKeyboardDelegate {
    // MARK: - Public methods to set or unset this uitextfield as NumericKeyboard.
    
    func setAsNumericKeyboard(delegate: NumericKeyboardDelegate?) {
        let numericKeyboard = NumericKeyboard(frame: CGRect(x: 0, y: 0, width: 0, height: kDLNumericKeyboardRecommendedHeight))
        self.inputView = numericKeyboard
        numericKeyboardDelegate = delegate
        numericKeyboard.delegate = self
    }
    
    func unsetAsNumericKeyboard() {
        if let numericKeyboard = self.inputView as? NumericKeyboard {
            numericKeyboard.delegate = nil
        }
        self.inputView = nil
        numericKeyboardDelegate = nil
    }
    
    // MARK: - NumericKeyboardDelegate methods
    
    internal func numericKeyPressed(key: Int) {
        self.text?.append("\(key)")
        numericKeyboardDelegate?.numericKeyPressed(key: key)
    }
    
    internal func numericBackspacePressed() {
        if var text = self.text, text.characters.count > 0 {
            _ = text.remove(at: text.index(before: text.endIndex))
            self.text = text
        }
        numericKeyboardDelegate?.numericBackspacePressed()
    }
    
    internal func numericSymbolPressed(symbol: String) {
        self.text?.append(symbol)
        numericKeyboardDelegate?.numericSymbolPressed(symbol: symbol)
    }
}
