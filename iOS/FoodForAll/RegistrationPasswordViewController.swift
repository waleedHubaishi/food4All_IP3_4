//
//  RegistrationPasswordViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class RegistrationPasswordViewController: UIViewController {

    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var passwordverificationTF: UITextField!
    
    
    @IBAction func toCapcha(_ sender: Any) {
        
        if (!(isValidPassword(passwordString: passwordTF.text!))) {
            //displayAlertMessage(messageToDisplay: "Passwort ist ungültig!")
            let alertController = UIAlertController(title: "Fehler", message: "Passwort ist ungültig!", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
                
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true, completion:nil)
        }
        if(!(passwordTF.text! == passwordverificationTF.text!)){
            //displayAlertMessage(messageToDisplay: "Beide Passworte stimmen nicht überein!")
            let alertController = UIAlertController(title: "Fehler", message: "Beide Passworte stimmen nicht überein!", preferredStyle: .alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
                
                // Code in this block will trigger when OK button tapped.
                print("Ok button tapped");
            }
            
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true, completion:nil)
        }
        else{
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "capcha") as! RegistrationCaptchaViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
//    //checking password complixity
//    func checkPasswordComplexity(passwordTF: String){
//        if (passwordTF.characters.count < 7) {
//            print("password checked")
//        }
//    }
    
    
    //password check
    func isValidPassword(passwordString: String) -> Bool {
        
        var returnValue = true
        let passwordRegEx = "([A-Za-z._%+-:/><#]{7,30})([0-9]{1,})"
        
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

    
    
}
