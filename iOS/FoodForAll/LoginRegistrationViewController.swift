//
//  LoginRegistrationViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class LoginRegistrationViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var passwordForgetB: UIButton!
    
    @IBOutlet weak var signUpB: UIButton!
    
    @IBAction func signIN(_ sender: Any) {
        checkingEmailFT(emailTF: emailTF.text!)
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SearchHome") as! SearchHomeViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let alertController = UIAlertController(title: "Alert", message: messageToDisplay, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion:nil)
    }
    
    //checking password complixity
    func checkPasswordComplexity(passwordTF: String){
        if (passwordTF.characters.count < 7) {
            print("password checked")
        }
    }
}
