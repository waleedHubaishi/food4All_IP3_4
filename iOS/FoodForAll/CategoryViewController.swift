//
//  CategoryViewController.swift
//  FoodForAll
//
//  Created by Alessandro Calcagno on 22.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet var OkButton: UIButton!
    @IBOutlet var cookedMeatImg: UIImageView!
    @IBOutlet var cookedVegiImg: UIImageView!
    @IBOutlet var fishImg: UIImageView!
    @IBOutlet var meatImg: UIImageView!
    @IBOutlet var milkImg: UIImageView!
    @IBOutlet var vegatableImg: UIImageView!
    @IBOutlet var fruitsImg: UIImageView!
    @IBOutlet var breadImg: UIImageView!
    @IBOutlet var allImg: UIImageView!
    @IBOutlet var cookedMeat: UILabel!
    @IBOutlet var cookedVegi: UILabel!
    @IBOutlet var fish: UILabel!
    @IBOutlet var meat: UILabel!
    @IBOutlet var milkproducts: UILabel!
    @IBOutlet var vegetable: UILabel!
    @IBOutlet var fruits: UILabel!
    @IBOutlet var bread: UILabel!
    @IBOutlet var all: UILabel!
    @IBOutlet var categoryView: UIView!
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
