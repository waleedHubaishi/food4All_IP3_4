//
//  RatingHomeViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 11.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class RatingHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
