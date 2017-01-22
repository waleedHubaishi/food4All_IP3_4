//
//  RegistrationCaptchaViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class RegistrationCaptchaViewController: UIViewController {

    @IBOutlet weak var verifyL: UILabel!
    
    @IBOutlet weak var verifyTF: UITextField!
    
    
    @IBAction func goToHome(_ sender: Any) {
        if (verifyL.text! == verifyTF.text!) {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SearchHome") as! SearchHomeViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        else{
            displayAlertMessage(messageToDisplay: " Versuchen Sie wieder!")
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
