//
//  PasswordForgotResetViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class PasswordForgotResetViewController: UIViewController {
    
    @IBOutlet weak var newPasswordTF: UITextField!
    
    @IBOutlet weak var passwordVerifyTF: UITextField!
    
    @IBOutlet weak var verifyB: UIButton!
    
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
