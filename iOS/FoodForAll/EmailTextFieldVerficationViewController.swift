//
//  EmailTextFieldVerficationViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class EmailTextFieldVerficationViewController: UIViewController {

    //Email verification
    func emailVerification(emailT: String) {
        
        let providedEmailAddress = emailT
        
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress)
        if isEmailAddressValid
        {
            print("Email address is valid")
        } else {
            print("Email address is not valid")
        }
        
    }
    
    //Email verification
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
}
