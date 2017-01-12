//
//  RegistrationNameViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class RegistrationNameViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func toPasswordVC(){
        
        let length = userNameTF.text?.characters.count
        checkingEmailFT(emailTF: emailTF.text!)
        if (!(length! < 20 && length! > 5)){
            displayAlertMessage(messageToDisplay: "Benutzername ist ungültig!")
        }
            if (EmailTextFieldVerficationViewController().isValidEmailAddress(emailAddressString: emailTF.text!)){
                let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "passWord") as! RegistrationPasswordViewController
                self.navigationController?.pushViewController(secondViewController, animated: true)}
    
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
    
    func checkingEmailFT(emailTF : String){
        EmailTextFieldVerficationViewController().emailVerification(emailT: emailTF)
        if EmailTextFieldVerficationViewController().isValidEmailAddress(emailAddressString: emailTF) == false {
            displayAlertMessage(messageToDisplay: "Emailadresse ist ungültig!")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
