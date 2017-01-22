//
//  AddFoodCheckPhotoViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class AddFoodCheckPhotoViewController: UIViewController {
  
    @IBOutlet weak var chosenFoodImage: UIImageView!
   
    var chosenImage:UIImage!
    var food:Food = Food()

    override func viewDidLoad() {
        super.viewDidLoad()
        if((self.chosenImage) != nil){
        self.chosenFoodImage.image = chosenImage
    }
        // Do any additional setup after loading the view.
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        food.foodPhoto = chosenImage
        let destViewController: FoodOverviewViewController = segue.destination as! FoodOverviewViewController
        
        destViewController.food = food
        
    }

    
    @IBAction func toNext()
    {
        food.foodPhoto = chosenImage
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "FoodAllDetails") as! FoodOverviewViewController
         secondViewController.food = food
            self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }

}
