//
//  NMTextField.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 09.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class NMTextField: UITextField {
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
}
