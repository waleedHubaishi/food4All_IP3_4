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

    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodCategory: UILabel!
    @IBOutlet weak var donaterName: UILabel!
    @IBOutlet weak var pickedupAtTill: UILabel!
    @IBOutlet weak var pickedupOn: UILabel!
    @IBOutlet weak var expirationDate: UILabel!
    @IBOutlet weak var descriptionTV: UITextView!
    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var confirmBtn: UIButton!
    @IBOutlet weak var foodImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(food.name)
        // Do any additional setup after loading the view.
        foodName.text = food.name
        foodCategory.text = food.category
        donaterName.text = food.donaterName
        pickedupOn.text = food.pickedUp
        pickedupAtTill.text = food.pickedUpAt
        expirationDate.text = food.expiration
        descriptionTV.text = food.description
        foodImage.image = food.foodPhoto
        
        descriptionTV.layer.borderWidth = 0.5
        descriptionTV.layer.borderColor = UIColor.gray.cgColor
        descriptionTV.layer.cornerRadius = 5
        descriptionTV.clipsToBounds = true

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
