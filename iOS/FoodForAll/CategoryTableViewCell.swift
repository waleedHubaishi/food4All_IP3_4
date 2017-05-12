//
//  CategoryTableViewCell.swift
//  FoodForAll
//
//  Created by Jalil Hashemi on 10.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
//        let checkedImage = UIImage(named: "checked_checkbox")!
//        let unCheckedImage = UIImage(named: "unchecked_checkbox")!
//        
//        var isChecked:Bool = false {
//            didSet {
//                if isChecked == true {
//                    self.setImage(checkedImage, for: .normal)
//                }
//                else {
//                    self.setImage(unCheckedImage, for: .normal)
//                }
//            }
//        }
//        
//        override func awakeFromNib() {
//            self.addTarget(self, action: "buttonClicked", for: UIControlEvents.touchUpInside)
//            self.isChecked = false
//        }
//        
//        func buttonClicked(sender:UIButton) {
//            if (sender == false) {
//                if isChecked == true {
//                    isChecked = false
//                }
//                else {
//                    isChecked = true
//                }
//            }
//        }
    
        
        
        //    dataArray[[NSMutableArray alloc] initWithObjects:
        //    @"Alle"
        //    @"Brotwaren"
        //    @"Früchte"
        //    @"Gemüse"
        //    @"Milchprodukte"
        //    @"Fleisch"
        //    @"Fisch"
        //    @"gekocht Vegi"
        //    @"gekocht mit Fleisch"
        //    nil];
        
        
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
