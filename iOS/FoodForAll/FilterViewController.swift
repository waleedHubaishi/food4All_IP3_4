//
//  FilterViewController.swift
//  FoodForAll
//
//  Created by Alessandro Calcagno on 22.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    @IBOutlet var categoryTF: UITextField!

    @IBOutlet var OkButton: UIButton!
    @IBOutlet var usernametf: UITextField!
    @IBOutlet var umkreistf: UITextField!
    @IBOutlet var placetf: UITextField!
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
