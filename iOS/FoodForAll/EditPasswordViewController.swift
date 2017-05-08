//
//  EditPasswordViewController.swift
//  FoodForAll
//
//  Created by Alessandro Calcagno on 08.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class EditPasswordViewController: UIViewController {

    //new project deleted
    @IBOutlet var NameLabel: UILabel!
    
    @IBOutlet var Profilepicture: UIImageView!
    
    @IBOutlet var RankLabel: UILabel!
    
    @IBOutlet var OldPassword: UITextField!
    
    @IBOutlet var NewPassword: UITextField!
    
    @IBOutlet var ConfirmNewPassword: UITextField!
    
    @IBOutlet var CommitButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hi");
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
