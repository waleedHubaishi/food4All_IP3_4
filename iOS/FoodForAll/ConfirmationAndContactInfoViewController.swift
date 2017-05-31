//
//  ConfirmationAndContactInfoViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 02.03.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class ConfirmationAndContactInfoViewController: UIViewController {
    
    @IBOutlet weak var firstTextView: UILabel!
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var closeBtn: UIButton!
    
    @IBOutlet weak var donerInfoView: UIView!
    @IBOutlet weak var donerNameHeader: UILabel!
    @IBOutlet weak var DonerEmailHeader: UILabel!
    @IBOutlet weak var reservationNumberHeader: UILabel!
    @IBOutlet weak var donerName: UILabel!
    @IBOutlet weak var donerEmail: UILabel!
    @IBOutlet weak var reservationNumber: UILabel!
    
    var doner:Person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray.withAlphaComponent(0.8)
        
        let borderColor : UIColor = UIColor.lightGray

        firstTextView.textColor = borderColor
        
        closeBtn.layer.borderWidth = 3.0
        closeBtn.layer.borderColor = borderColor.cgColor
        closeBtn.layer.cornerRadius = 15
        closeBtn.setTitleColor(borderColor, for: .normal)
        closeBtn.setTitle("OK", for: .normal)
        
        donerInfoView.layer.borderWidth = 3.0
        donerInfoView.layer.borderColor = borderColor.cgColor
        donerInfoView.layer.cornerRadius = 15
        
        popUpView.layer.borderWidth = 3.0
        popUpView.layer.borderColor = borderColor.cgColor
        popUpView.layer.cornerRadius = 15
        
        donerNameHeader.textColor = borderColor
        DonerEmailHeader.textColor = borderColor
        reservationNumberHeader.textColor = borderColor

        donerName.text = doner.userName
        donerEmail.text = doner.email
        reservationNumber.text = "123.343.221"
        
        
        self.showAnimate()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func closePopUp(_ sender: Any) {
        //self.view.removeFromSuperview()
        self.removeAnimate()
    }
    
    func showAnimate() {
    self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
    self.view.alpha = 0
    UIView.animate(withDuration: 0.25) {
    self.view.alpha = 1
    self.view.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    }
    
    func removeAnimate() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished) {
                self.view.removeFromSuperview()
            }
        })
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
