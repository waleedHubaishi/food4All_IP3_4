//
//  RegistrationNameViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class RegistrationNameViewController: UIViewController {

    var person: Person = Person()
    
    @IBOutlet weak var userNameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var nextB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround()

    }
    
    func isInputValid(inputLength:Int) -> Bool {
        if((inputLength < 5) || (inputLength > 20)) {
            return false
        }
        return true
    }
    
    @IBAction func toPasswordVC() {
        
        let length = userNameTF.text?.characters.count

        if (isInputValid(inputLength: length!) == false) {
            displayAlertMessage(messageToDisplay: "Benutzername ist ungültig!")
        }
        if !(EmailTextFieldVerficationViewController().isValidEmailAddress(emailAddressString: emailTF.text!)) {
            displayAlertMessage(messageToDisplay: "Emailadresse ist ungültig!")
        }
        if !(EmailExistenceViewController().existEmailAddress(emailAddressString: emailTF.text!)) {
            displayAlertMessage(messageToDisplay: "Emailadresse existiert!")
        }
        else {
            person.userName = userNameTF.text!
            person.email = emailTF.text!
            
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "passWord") as! RegistrationPasswordViewController
            secondViewController.person = person
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
    func displayAlertMessage(messageToDisplay: String) {
        print(messageToDisplay)
        let alertController = UIAlertController(title: "Fehler", message: messageToDisplay, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) {
            (action:UIAlertAction!) in
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion:nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
