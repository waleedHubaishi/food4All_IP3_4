//
//  AddFoodPickUpViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 01.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

extension UIToolbar {
    
    func ToolbarPiker(mySelect : Selector) -> UIToolbar {
        
        let toolBar = UIToolbar()
        
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor.black
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.plain, target: self, action: mySelect)
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([ spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        return toolBar
    }
    
}

class AddFoodPickUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var pickUpLbl: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    @IBOutlet weak var pickUPonLbl: UILabel!
    @IBOutlet weak var pickedUpOnTF: UITextField!
    @IBOutlet weak var pickUpAtTF: UITextField!
    @IBOutlet weak var toAddPlaceBtn: UIButton!
    @IBOutlet weak var warningLbl: UILabel!
   
    var food:Food = Food()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "myfridge.png"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 65, height: 40)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
        //date and time picker
        let toolBar = UIToolbar().ToolbarPiker(mySelect: #selector(AddFoodPickUpViewController.dismissPicker))
        pickedUpOnTF.inputAccessoryView = toolBar
        pickUpAtTF.inputAccessoryView = toolBar
    }
    
    func dismissPicker() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        food.pickedUp = pickedUpOnTF.text
        food.pickedUpAt = pickUpAtTF.text
        let destViewController: addFoodPlaceViewController = segue.destination as! addFoodPlaceViewController
        destViewController.food = food
        
    }
    
    @IBAction func pickUpOn(_ sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.minimumDate = NSDate() as Date
        datePickerView.datePickerMode = UIDatePickerMode.date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(AddFoodPickUpViewController.datePickerValueChanged), for: UIControlEvents.valueChanged)
    }
    
    
    func datePickerValueChanged(sender:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateFormat = "dd.MM.yyyy"
        pickedUpOnTF.text = dateFormatter.string(from: sender.date)
    }
    
    
    @IBAction func pickUpAt(_ sender: UITextField) {
        let timePickerView:UIDatePicker = UIDatePicker()
        
        timePickerView.datePickerMode = UIDatePickerMode.time
        sender.inputView = timePickerView
        timePickerView.addTarget(self, action: #selector(AddFoodPickUpViewController.pickUpAtFunc), for: UIControlEvents.valueChanged)
    }
    
    func pickUpAtFunc(sender: UIDatePicker) {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = DateFormatter.Style.medium
        dateFormatter1.timeStyle = DateFormatter.Style.none
        dateFormatter1.dateFormat = "HH:mm"
        pickUpAtTF.text = dateFormatter1.string(from: sender.date)
    }
    
    
    @IBAction func toNext()
    {
        if ((pickedUpOnTF.text == "") || (pickUpAtTF.text == ""))
        {
            warningLbl.text = "please fill all the fields"
            warningLbl.textColor = UIColor.red
        }
        else{
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "FoodPlace") as! addFoodPlaceViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
    
}
