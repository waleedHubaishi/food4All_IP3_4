//
//  PlusMinusViewController.swift
//  FoodForAll
//
//  Created by Alessandro Calcagno on 08.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class PlusMinusViewController: UIViewController {

    @IBOutlet var NameLabel: UILabel!
    
    @IBOutlet var Profilepicture: UIImageView!
    
    @IBOutlet var RankLabel: UILabel!
    
    
    @IBOutlet var DeleteAdress: UIButton!
    
    @IBOutlet var OldAdress: UITextField!
   
    @IBOutlet var AddAdress: UIButton!
    
    @IBOutlet var NewAdress: UITextField!
    
    @IBOutlet var Abort: UIButton!
    
    @IBOutlet var Confirm: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc: UITabBarController = mainStoryboard.instantiateViewController(withIdentifier: "EditProfile") as! UITabBarController
        vc.selectedIndex = 3
        self.present(vc, animated: true, completion: nil)
        
        
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
