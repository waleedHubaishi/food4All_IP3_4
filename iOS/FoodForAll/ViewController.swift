//
//  ViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 29.11.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fridge: UIButton!
    
    @IBOutlet weak var rank: UIButton!
    
    @IBOutlet weak var addFood: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.navigationController?.navigationBar.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

