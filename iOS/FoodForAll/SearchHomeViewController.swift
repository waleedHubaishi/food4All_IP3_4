//
//  SearchHomeViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

var foodList = [Food]()


class SearchHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     let temp = Food();
    var indexOfSelectedRow:Int = 0
    @IBOutlet weak var foodTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.foodTableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.foodTableview.backgroundColor = UIColor.lightGray
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
            var image = 
            temp.foodPhoto = UIImage(named: "pasta")!
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
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! FoodTableViewCell
    
        
        let foodInTable = foodList[indexPath.row]
        cell.foodName.text = foodInTable.name
        cell.foodType.text = foodInTable.category
        cell.pickUpTillHour.text = foodInTable.pickedUpAt
        cell.bisLbl.text = foodInTable.pickedUp
        cell.foodImage.image = foodInTable.foodPhoto
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexOfSelectedRow = (indexPath.row)
        print("index path is")
        print(indexOfSelectedRow)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toFoodDetail") {
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destination as! ChosenFoodViewController
            print("index path is in prepare ")
            print(indexOfSelectedRow)
            // your new view controller should have property that will store passed value
            viewController.food = foodList[indexOfSelectedRow]
        }
    }
    
    
}
