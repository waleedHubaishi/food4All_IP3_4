//
//  FoodTableViewCell.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 23.01.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodType: UILabel!
    @IBOutlet weak var pickUpTillHour: UILabel!
    @IBOutlet weak var donaterName: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var bisLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
}
