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
    
    @IBOutlet weak var registrationB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
