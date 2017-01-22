//
//  addFoodNameViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 01.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class addFoodNameViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var whatIsItLbl: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var categorieTF: UITextField!
    @IBOutlet weak var toDescriptionBtn: UIButton!
    @IBOutlet weak var warningLbl: UILabel!
    
    var food:Food = Food()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "myfridge.png"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 65, height: 40)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
        let toolBar = UIToolbar().ToolbarPiker(mySelect: #selector(AddFoodPickUpViewController.dismissPicker))
        categorieTF.inputAccessoryView = toolBar
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
        
       
            food.name = nameTF.text
            food.category = categorieTF.text
            
            let destViewController: addFoodDescriptionViewController = segue.destination as! addFoodDescriptionViewController
            
            destViewController.food = food
        
       
        
    }
    
    
    func  textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //only characters
        let set = NSCharacterSet(charactersIn: " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
        let inverted = set.inverted;
        let filtered = string.components(separatedBy: inverted).joined(separator: "")
        
        guard let text = textField.text else { return true }
        var limitMaxLength = 1

        if textField == nameTF {
            limitMaxLength = 30
        }
        
        if textField == categorieTF {
            limitMaxLength = 30
        }
        
        let newLength = text.characters.count + string.characters.count - range.length
        if newLength > limitMaxLength {
            return false
        }
        
        return filtered == string
    }
    
    
    var pickerDataSoruce = ["Cooked", "Raw", "Liquid"]

    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSoruce.count
    }
    
    //MARK: Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSoruce[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        categorieTF.text = pickerDataSoruce[row]
       
    }
    
    @IBAction func categoryPcikerViewFunc(_ sender: UITextField) {
        categorieTF.text = pickerDataSoruce[0]
        let PickerView:UIPickerView = UIPickerView()
        PickerView.dataSource = self
        PickerView.delegate = self
        categorieTF.inputView = PickerView
   }
    
    
    @IBAction func toNext()
    {
        
        
        if ((nameTF.text! == "") || (categorieTF.text! == "") || ((nameTF.text?.characters.count)!) < 3)
        {
            warningLbl.text = "please fill all the fields"
            warningLbl.textColor = UIColor.red
        }
        else{
            
            food.name = nameTF.text
            food.category = categorieTF.text
            
            
            
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "FoodDescription") as! addFoodDescriptionViewController
            secondViewController.food = food
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
   
    
}
