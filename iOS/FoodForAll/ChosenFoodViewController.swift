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
    
    @IBOutlet weak var donerNameLabel: UILabel!
    @IBOutlet weak var foodNameBGView: UIView!
    @IBOutlet weak var categoryBGView: UIView!
    
    @IBOutlet weak var userBGView: UIView!
    
    @IBOutlet weak var descriptionBGView: UIView!
    @IBOutlet weak var pickUpBGView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reserveButton.setTitle("Abholen", for: .normal)
        
        let borderColor : UIColor = UIColor.lightGray
        
        foodNameLabel.text = food.name
        foodNameBGView.layer.borderWidth = 3.0
        foodNameBGView.layer.borderColor = borderColor.cgColor
        foodNameBGView.layer.cornerRadius = 15
        
        //donerNameLabel.text = food.doner
        userBGView.layer.borderWidth = 3.0
        userBGView.layer.borderColor = borderColor.cgColor
        userBGView.layer.cornerRadius = 15
        
        
        descriptionHeaderLabel.textColor = borderColor
        descriptionTV.text = food.description
        descriptionBGView.layer.borderWidth = 3.0
        descriptionBGView.layer.borderColor = borderColor.cgColor
        descriptionBGView.layer.cornerRadius = 15
        
        if(!((donerNameLabel.text?.isEmpty)!)){
        donerNameLabel.text = food.donaterName
        }
        else{
            donerNameLabel.text = "Muster Mustermann"
        }
        
        pickUpTillHeaderLabel.textColor = borderColor
        toKeepTillHeaderLabel.textColor = borderColor
        toPickUpAtLabel.text = food.pickedUpAt+" Uhr, "+food.pickedUp
        toKeepTillLabel.text = food.expiration
        pickUpBGView.layer.borderWidth = 3.0
        pickUpBGView.layer.borderColor = borderColor.cgColor
        pickUpBGView.layer.cornerRadius = 15
        
        categoryHeaderLabel.textColor = borderColor
        categoryNameLabel.text = food.category
        categoryBGView.layer.borderWidth = 3.0
        categoryBGView.layer.borderColor = borderColor.cgColor
        categoryBGView.layer.cornerRadius = 15
        
        chosenFoodPhoto.image = food.foodPhoto
        chosenFoodPhoto.layer.borderWidth = 3.0
        chosenFoodPhoto.layer.borderColor = borderColor.cgColor
        chosenFoodPhoto.layer.cornerRadius = 15
        
        reserveButton.setTitleColor(UIColor.orange, for: .normal)
        reserveButton.layer.borderWidth = 3.0
        reserveButton.layer.borderColor = borderColor.cgColor
        reserveButton.layer.cornerRadius = 15
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //defines the header colors
        let nav = self.navigationController?.navigationBar
        
        //changes the navigation bar color
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 70.0/255.0, green: 171.0/255.0, blue: 215.0/255.0, alpha: 1.0)
        
        //changes the icon color
        nav?.tintColor = UIColor.white
        
        //changes the title color
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        //add myFridge to the navigation bar
        
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
    
    @IBAction func buttonPressed(_ sender: Any) {
        if(reserveButton.currentTitle == "Abholen")
        {
            reserveButton.setTitleColor(UIColor.green, for: .normal)
            reserveButton.setTitle("reserviert", for: .normal)
            
            let contactPopUP = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "contactDetails") as! ConfirmationAndContactInfoViewController
            
            contactPopUP.doner.email = "muster@website.com"
            contactPopUP.doner.userName = donerNameLabel.text
            
            self.addChildViewController(contactPopUP)
            contactPopUP.view.frame = self.view.frame
            self.view.addSubview(contactPopUP.view)
            contactPopUP.didMove(toParentViewController: self)
        
        }
        else{
            reserveButton.setTitleColor(UIColor.orange, for: .normal)
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
