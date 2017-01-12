//
//  addFoodDescriptionViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 01.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class addFoodDescriptionViewController: UIViewController {
    
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    @IBOutlet weak var descriptoinTV: UITextView!
    @IBOutlet weak var toKeepTilLbl: UILabel!
    @IBOutlet weak var toPickUpBtn: UIButton!
    @IBOutlet weak var toKeepTilTF: UITextField!
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        food.description = descriptoinTV.text
        food.expiration = toKeepTilTF.text
        let destViewController: AddFoodPickUpViewController = segue.destination as! AddFoodPickUpViewController
        destViewController.food = food
        
        
        
    }
}
