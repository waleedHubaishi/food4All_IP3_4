//
//  SearchHomeViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class SearchHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var foodList = [Food]()
     let temp = Food();
    
    @IBOutlet weak var foodTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.foodTableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if(foodList.isEmpty)
        {
            print("empty")
            
            temp.name = "Pasta";
            temp.category = "cooked";
            temp.description = "delievered hot"
            temp.expiration = "12.12.2017"
            temp.pickedUp = "13.05.2017"
            temp.pickedUpAt = "13:13"
            temp.place = "Brugg"
            
            foodList.append(temp)
            
        }
            
        else
        {
            print(foodList)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! FoodTableViewCell
    
        
        let foodInTable = foodList[indexPath.row]
        cell.foodName.text = foodInTable.name
        cell.foodType.text = foodInTable.category
        cell.pickUpTillHour.text = foodInTable.pickedUpAt
        cell.bisLbl.text = foodInTable.pickedUp
        
        return cell
    }
    
}
