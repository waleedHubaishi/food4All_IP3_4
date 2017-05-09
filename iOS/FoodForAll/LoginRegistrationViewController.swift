//
//  LoginRegistrationViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

// dummy email and password for verification
let tempEmail = "jalil.hashemi@students.fhnw.ch"
let tempPass = "123Password"

import UIKit

class LoginRegistrationViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var passwordForgetB: UIButton!
    
    @IBOutlet weak var signUpB: UIButton!
    
    @IBAction func signIN(_ sender: Any) {
        checkingEmailFT(emailTF: emailTF.text!)
        if (EmailTextFieldVerficationViewController().isValidEmailAddress(emailAddressString: emailTF.text!)){}
            if (isValidPassword(passwordString: passwordTF.text!) && (tempEmail == emailTF.text!) && (tempPass == passwordTF.text!)) {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SearchHome") as! SearchHomeViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
            else{displayAlertMessage(messageToDisplay: "Passwort ist ungültig!")
        }
    }
  
    //defines the header colors
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let nav = self.navigationController?.navigationBar
        
        //changes the navigation bar color
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 70.0/255.0, green: 171.0/255.0, blue: 215.0/255.0, alpha: 1.0)
        
        //changes the icon color
        nav?.tintColor = UIColor.white
        
        //changes the title color
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    // Take an email address and checking it
    func checkingEmailFT(emailTF : String){
        EmailTextFieldVerficationViewController().emailVerification(emailT: emailTF)
        if EmailTextFieldVerficationViewController().isValidEmailAddress(emailAddressString: emailTF) == false {
            displayAlertMessage(messageToDisplay: "Emailadresse ist ungültig!")
        }
    }
    
    func displayAlertMessage(messageToDisplay: String)
    {
        print(messageToDisplay)
        let alertController = UIAlertController(title: "Fehler", message: messageToDisplay, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion:nil)
    }   
    
    //password check
    func isValidPassword(passwordString: String) -> Bool {
        
        var returnValue = true
        let passwordRegEx = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,30}$"
        
        do {
            let regex = try NSRegularExpression(pattern: passwordRegEx)
            let nsString = passwordString as NSString
            let results = regex.matches(in: passwordString, range: NSRange(location: 0, length: nsString.length))
            
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
