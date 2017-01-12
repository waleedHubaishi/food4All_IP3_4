//
//  PasswordForgotViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit



//some small changes are need to be made



class PasswordForgotViewController: UIViewController {
    
    @IBOutlet weak var passwordResetL: UILabel!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var verifyB: UIButton!
    
    var emailArray = [String]()
    let email1 = "hussein.farzi@students.fhnw.ch"
    let email2 = "jalil.hashemi@students.fhnw.ch"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailArray.append(email1)
        emailArray.append(email2)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Email verification
    @IBAction func emailVerification(_ sender: AnyObject) {
        let emailTextFieldInput = emailTF.text
        let isEmailValid = isValidEmailAddress(emailAddressString: emailTextFieldInput!)
        
        if isEmailValid {
            print("Valid")
        } else {
            displayAlertMessage(messageToDisplay: "Emailadresse ist ungültig!")
        }
    }
    
    //Email acceptance criteria
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        var result = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0 {
                result = false
            }
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            result = false
        }
        return  result
    }
    
    //Display the alert message popup
    func displayAlertMessage(messageToDisplay: String) {
        
        let alert = UIAlertController(title: "Fehler", message: messageToDisplay, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
        }
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion:nil)
    }
    
    //Verification button to send the password-recovery link via email
    @IBAction func verfiyOldEmailButton() {
        if isValidEmailAddress(emailAddressString: emailTF.text!) && (emailTF.text == email1 || emailTF.text == email2) {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "PasswordForgot1") as! PasswordForgotMessageViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        } else {
            displayAlertMessage(messageToDisplay: "Emailadresse ist ungültig!")
        }
    }
    
    //    //Send email to the user
    //    func sendEmail() {
    //        if MFMailComposeViewController.canSendMail() {
    //            let sendMail = MFMailComposeViewController()
    //            sendMail.setToRecipients([emailTF.text!])
    //            sendMail.setMessageBody("<p>Guten Tag, klicken Sie auf diesem Link um Ihr Passwort zurückzusetzen.</p>", isHTML: true)
    //            present(sendMail, animated: true)
    //        } else {
    //            displayAlertMessage(messageToDisplay: "Email konnte nicht gesendet werden!")
    //        }
    //    }
    //
    //    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
    //        controller.dismiss(animated: true)
    //    }
}
