//
//  EmailExistenceViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 09.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class EmailExistenceViewController: UIViewController {
    
    let url = NSURL(string: "http://86.119.36.198/select.php")
    
    func existEmailAddress(emailAddressString: String) -> Bool {
        
        var result = true
        
        var request = URLRequest(url: url! as URL)
        request.httpMethod = "POST"
        
        let dataString = "&Email=\(emailAddressString)"
        let dataDB = dataString.data(using: .utf8)
        
        do {
            let task = URLSession.shared.uploadTask(with: request, from: dataDB) {
                data, response, error in
                if error != nil {
                    result = false
                }
            }
            task.resume()
        }
        return result
    }
}
