//
//  EditProfileViewController.swift
//  FoodForAll
//
//  Created by Alessandro Calcagno on 27.04.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet var NameLabel: UILabel!
    
    @IBOutlet var Profilepicture: UIImageView!
    
    @IBOutlet var RankLabel: UILabel!
    
    @IBOutlet var ChangeLabel: UIButton!
    
    @IBOutlet var PwChangeLabel: UIButton!
    
    @IBOutlet var EmailChangeLabel: UIButton!
    
    @IBOutlet var PlaceAddLabel: UIButton!
    
    @IBOutlet var TelNumbAdd: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
