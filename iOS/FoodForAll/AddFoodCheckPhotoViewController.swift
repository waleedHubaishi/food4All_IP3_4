//
//  AddFoodCheckPhotoViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class AddFoodCheckPhotoViewController: UIViewController {
  
    @IBOutlet weak var chosenFoodImage: UIImageView!
   
    var chosenImage:UIImage!
    var food:Food = Food()


    override func viewDidLoad() {
        super.viewDidLoad()
        if((self.chosenImage) != nil){
        self.chosenFoodImage.image = chosenImage
            
                }
        // Do any additional setup after loading the view.
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //saves the token photo in a directory
    func saveImageToDocumentDirectory(_ chosenImage: UIImage) -> String {
        let directoryPath =  NSHomeDirectory().appending("/Documents/")
        if !FileManager.default.fileExists(atPath: directoryPath) {
            do {
                try FileManager.default.createDirectory(at: NSURL.fileURL(withPath: directoryPath), withIntermediateDirectories: true, attributes: nil)
            } catch {
                print(error)
            }
        }
        
        let dateFormatter3 = DateFormatter()
        dateFormatter3.timeStyle = .medium
        dateFormatter3.dateFormat = "yyyymmddhhmmss"
        
        let dateOfToday = NSDate() as Date
        
        let filename = dateFormatter3.string(from: dateOfToday).appending(".jpg")
        let filepath = directoryPath.appending(filename)
        let url = NSURL.fileURL(withPath: filepath)
        do {
            try UIImageJPEGRepresentation(chosenImage, 1.0)?.write(to: url, options: .atomic)
            return String.init("/Documents/\(filename)")
            
        } catch {
            print(error)
            print("file cant not be save at path \(filepath), with error : \(error)");
            return filepath
        }
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        food.foodPhoto = chosenImage
        let destViewController: FoodOverviewViewController = segue.destination as! FoodOverviewViewController
        
        destViewController.food = food
        
    }

    
    @IBAction func toNext()
    {
        food.foodPhoto = chosenImage
        //saveImageToDocumentDirectory(chosenImage)
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "FoodAllDetails") as! FoodOverviewViewController
         secondViewController.food = food
            self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }

}
