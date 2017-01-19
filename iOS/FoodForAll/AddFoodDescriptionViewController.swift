//
//  addFoodDescriptionViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 01.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit


class addFoodDescriptionViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    @IBOutlet weak var descriptoinTV: UITextView!
    @IBOutlet weak var toKeepTilLbl: UILabel!
    @IBOutlet weak var toPickUpBtn: UIButton!
    @IBOutlet weak var toKeepTilTF: UITextField!
    @IBOutlet weak var warningLbl: UILabel!
    
    var food:Food = Food()
    var dateFormate = Bool()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "myfridge.png"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 65, height: 40)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
        ///textview border
        descriptoinTV!.layer.borderWidth = 0.5
        descriptoinTV!.layer.borderColor = UIColor.gray.cgColor
        descriptoinTV.layer.cornerRadius = 5
        descriptoinTV.clipsToBounds = true
        
        
        //textfield tag
        toKeepTilTF.tag = 1
        let toolBar = UIToolbar().ToolbarPiker(mySelect: #selector(addFoodDescriptionViewController().dismissPicker))
        toKeepTilTF.inputAccessoryView = toolBar

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
        food.description = descriptoinTV.text
        food.expiration = toKeepTilTF.text
        let destViewController: AddFoodPickUpViewController = segue.destination as! AddFoodPickUpViewController
        destViewController.food = food
    }
    
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if(text == "\n")
        {
            textView.resignFirstResponder()
            return false
        
        }
        
        guard let text = textView.text else { return true }
        var limitMaxLength = 1
        
        if textView == descriptoinTV {
            limitMaxLength = 30
        }
        
        
        let newLength = text.characters.count - range.length
        if newLength > limitMaxLength {
            return false
        }

        
        return true
        }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if(textView.text == "your description here")
        {
            textView.text = ""
            textView.alpha = 1
            textView.textColor = UIColor.black
        }
       

        
        textView.becomeFirstResponder()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if(textView.text == "")
        {
            textView.text = "your description here"
            textView.textColor = UIColor.gray
            textView.alpha = 0.5
        }
        textView.resignFirstResponder()
    }
    
    
    @IBAction func textFieldEditing(_ sender: UITextField) {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        dateFormatter.dateFormat = "dd.MM.yyyy"
        toKeepTilTF.text = "\(dateFormatter.string(from: Date() as Date))"
        
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.minimumDate = NSDate() as Date
        datePickerView.datePickerMode = UIDatePickerMode.date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(addFoodDescriptionViewController.datePickerValueChanged), for: UIControlEvents.valueChanged)
    }
    
    func datePickerValueChanged(sender:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateFormat = "dd.MM.yyyy"
        toKeepTilTF.text = dateFormatter.string(from: sender.date)
    }
    
    @IBAction func toNext()
    {
        if ((descriptoinTV.text == "") || (descriptoinTV.text == "your description here") || (toKeepTilTF.text == "") || ((descriptoinTV.text?.characters.count)!) < 3)
        {
            warningLbl.text = "please fill all the fields"
            warningLbl.textColor = UIColor.red
        }
        else{
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "FoodDate") as! AddFoodPickUpViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
    
}
