//
//  FoodOverviewViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 12.01.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class FoodOverviewViewController: UIViewController {

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
    
    @IBOutlet weak var donerNameLabel: UILabel!
    @IBOutlet weak var foodNameBGView: UIView!
    @IBOutlet weak var categoryBGView: UIView!
    
    @IBOutlet weak var userBGView: UIView!
    
    @IBOutlet weak var descriptionBGView: UIView!
    @IBOutlet weak var pickUpBGView: UIView!
    
    @IBOutlet weak var editBtn: UIButton!
    
    @IBOutlet weak var addBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(food.name)
        // Do any additional setup after loading the view.
        foodNameLabel.text = food.name
        categoryNameLabel.text = food.category
        donerNameLabel.text = food.donaterName
        toPickUpAtLabel.text = food.pickedUpAt + " Uhr, " + food.pickedUp
        toKeepTillLabel.text = food.expiration
        descriptionTV.text = food.description
        chosenFoodPhoto.image = food.foodPhoto
        
        descriptionTV.layer.borderWidth = 0.5
        descriptionTV.layer.borderColor = UIColor.gray.cgColor
        descriptionTV.layer.cornerRadius = 5
        descriptionTV.clipsToBounds = true
        
        let borderColor : UIColor = UIColor.lightGray
        
        addBtn.layer.borderWidth = 2.0
        addBtn.layer.borderColor = borderColor.cgColor
        addBtn.layer.cornerRadius = 15
        addBtn.setTitleColor(borderColor, for: .normal)
        addBtn.setTitle("Bestätigen", for: .normal)
        addBtn.setTitleColor(UIColor.green, for: .normal)
        
        editBtn.layer.borderWidth = 2.0
        editBtn.layer.borderColor = borderColor.cgColor
        editBtn.layer.cornerRadius = 15
        editBtn.setTitleColor(borderColor, for: .normal)
        editBtn.setTitle("Bearbeiten", for: .normal)
        editBtn.setTitleColor(UIColor.orange, for: .normal)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    @IBAction func addFood(_ sender: UIButton) {
        foodList.append(food)
        //self.navigationController?.pushViewController(secondViewController, animated: true)
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc: UITabBarController = mainStoryboard.instantiateViewController(withIdentifier: "tabBarController") as! UITabBarController
        vc.selectedIndex = 0
        self.present(vc, animated: true, completion: nil)
        print("hello i am the new")
        print(food)
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
