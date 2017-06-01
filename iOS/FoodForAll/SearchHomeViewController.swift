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
    let temp2 = Food();

    var indexOfSelectedRow:Int = 0
    @IBOutlet weak var foodTableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.foodTableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.foodTableview.backgroundColor = UIColor.white
        //self.foodTableview.separatorStyle = .none
        self.foodTableview.dataSource=self
        self.foodTableview.delegate=self
        
        // Assign your color to this property.
        self.foodTableview.separatorColor = UIColor.white
        
        // Do any additional setup after loading the view.
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

        self.foodTableview.reloadData()

        if(foodList.isEmpty)
        {
            print("empty")
            temp.name = "Pasta";
            temp.category = "gekocht";
            temp.description = "delievered hot"
            temp.expiration = "12.12.2017"
            temp.pickedUp = "13.05.2017"
            temp.pickedUpAt = "13:13"
            temp.place = "Brugg"
            //var image =
            temp.foodPhoto = UIImage(named: "pasta.png")
            temp.donaterName = "Lorenzo"
            foodList.append(temp)
            
            temp2.name = "Burger";
            temp2.category = "gekocht";
            temp2.description = "delievered cold"
            temp2.expiration = "12.12.2020"
            temp2.pickedUp = "13.05.2020"
            temp2.pickedUpAt = "13:13"
            temp2.place = "Brugg"
            //var image = 
            temp2.foodPhoto = UIImage(named: "burger.png")
            temp2.donaterName = "Julien"

            foodList.append(temp2)
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
        if(foodList.count != 0){
            return foodList.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //cell.backgroundColor = UIColor.clear
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! FoodTableViewCell
        
        cell.contentView.backgroundColor = UIColor.init(red: 17.0/255.0, green: 186.0/255.0, blue: 204.0/255.0, alpha: 1.0)
        
        //cell.preservesSuperviewLayoutMargins = false
        //cell.separatorInset = UIEdgeInsets.zero
        //cell.layoutMargins = UIEdgeInsets.zero
        
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true
        
        let foodInTable = foodList[indexPath.row]
        cell.foodName.text = foodInTable.name
        cell.foodType.text = foodInTable.category
        cell.pickUpTillHour.text = foodInTable.pickedUpAt
        cell.bisLbl.text = foodInTable.pickedUp
        cell.foodImage.image = foodInTable.foodPhoto
        cell.donaterName.text = foodInTable.donaterName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexOfSelectedRow = (indexPath.row)
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "chosenFoodDetails") as! ChosenFoodViewController
        secondViewController.food = foodList[indexOfSelectedRow]
        secondViewController.indexOfSelectedElement = indexOfSelectedRow
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    
    
}
