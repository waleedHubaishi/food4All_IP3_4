//
//  ChosenFoodViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 02.03.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class ChosenFoodViewController: UIViewController {

    var food:Food = Food()

    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var chosenFoodBackGround: UIView!
    @IBOutlet weak var chosenFoodPhoto: UIImageView!
    @IBOutlet weak var userRating: UIImageView!
    @IBOutlet weak var categoryHeaderLabel: UILabel!
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var pickupBackground: UIImageView!
    @IBOutlet weak var pickUpTillHeaderLabel: UILabel!
    @IBOutlet weak var toKeepTillHeaderLabel: UILabel!
    @IBOutlet weak var toKeepTillLabel: UILabel!
    @IBOutlet weak var toPickUpAtLabel: UILabel!
    @IBOutlet weak var toPickUpOnLabel: UILabel!
    @IBOutlet weak var descriptionTV: UITextView!
    @IBOutlet weak var descriptionHeaderLabel: UILabel!
    @IBOutlet weak var reserveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chosenFoodPhoto.image = food.foodPhoto
        categoryNameLabel.text = food.category
        foodNameLabel.text = food.name
        toPickUpAtLabel.text = food.pickedUpAt
        toKeepTillLabel.text = food.expiration
        toPickUpOnLabel.text = food.pickedUp
        descriptionTV.text = food.description
        reserveButton.setTitle("Abholen", for: .normal)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if(reserveButton.currentTitle == "Abholen")
        {
             reserveButton.setTitle("reserviert", for: .normal)
        }
        else{
            reserveButton.setTitle("Abholen", for: .normal)
        }
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