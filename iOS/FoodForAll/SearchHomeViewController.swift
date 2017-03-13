//
//  SearchHomeViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class SearchHomeViewController: UIViewController {

     var foodList = [Food]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(foodList.isEmpty)
        {
            print("empty")
        }
        
        else
        {
            print(foodList)
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! FoodTableViewCell
        
        let foodName = foodList[indexPath.row]
        cell.foodName.text = foodName.name
        
        
        return cell
    }
    
}
