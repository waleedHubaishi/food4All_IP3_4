//
//  AddFoodPickUpViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 01.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class AddFoodPickUpViewController: UIViewController {
    
    @IBOutlet weak var pickUpLbl: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    @IBOutlet weak var pickUPonLbl: UILabel!
    @IBOutlet weak var pickedUpOnTF: UITextField!
    @IBOutlet weak var pickUpAtTF: UITextField!
    @IBOutlet weak var toAddPlaceBtn: UIButton!
   
    var food:Food = Food()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "myfridge.png"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 65, height: 40)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        food.pickedUp = pickedUpOnTF.text
        food.pickedUpAt = pickUpAtTF.text
        let destViewController: addFoodPlaceViewController = segue.destination as! addFoodPlaceViewController
        destViewController.food = food
        
    }
    
    
}
