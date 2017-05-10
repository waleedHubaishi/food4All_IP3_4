//
//  addFoodPlaceViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 01.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit
import CoreLocation


class AddFoodPlaceViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var placeLbl: UILabel!
    @IBOutlet weak var progressPhoto: UIImageView!
    @IBOutlet weak var placeTF: UITextField!
    @IBOutlet weak var choseMyAddressTF: UITextField!
    @IBOutlet weak var locationIdentifierBtn: UIButton!
    @IBOutlet weak var toAddPhotoBtn: UIButton!
    @IBOutlet weak var warningLbl: UILabel!

    var food:Food = Food()
    var locationManager:CLLocationManager!
    var currentLocation:CLLocation?
    var locationValue:CLLocationCoordinate2D!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "myfridge.png"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 65, height: 40)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
        choseMyAddressTF.isHidden = true
    }
    
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        food.place = placeTF.text
        let destViewController: AddFoodPhotoViewController = segue.destination as! AddFoodPhotoViewController
        destViewController.food = food

    }
    
    @IBAction func findMyLocation(_ sender: Any) {
        setupLocationManager()
    }
    
    
    func setupLocationManager(){
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        self.locationManager?.requestAlwaysAuthorization()
        locationManager?.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager?.startUpdatingLocation()
        
    }
    
    // Below method will provide you current location.
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if currentLocation == nil {
            currentLocation = locations.last
            locationManager?.stopMonitoringSignificantLocationChanges()
            locationValue = manager.location!.coordinate
            
            let geoCoder = CLGeocoder()
            let location = CLLocation(latitude: locationValue.latitude, longitude: locationValue.longitude)
            geoCoder.reverseGeocodeLocation(location, completionHandler: { placemarks, error in
                guard let addressDict = placemarks?[0].addressDictionary else {
                    return
                }
                
                // Print each key-value pair in a new row
                addressDict.forEach { print($0) }
                
                // Print fully formatted address
                if let formattedAddress = addressDict["FormattedAddressLines"] as? [String] {
                    print(formattedAddress.joined(separator: ", "))
                    self.placeTF.text = formattedAddress.joined(separator: ", ")
                }
                
                // Access each element manually
                if let locationName = addressDict["Name"] as? String {
                    print(locationName)
                }
                if let street = addressDict["Thoroughfare"] as? String {
                    print(street)
                }
                if let city = addressDict["City"] as? String {
                    print(city)
                }
                if let zip = addressDict["ZIP"] as? String {
                    print(zip)
                }
                if let country = addressDict["Country"] as? String {
                    print(country)
                }
            })
            
            locationManager?.stopUpdatingLocation()
        }
    }
    
    // Below Mehtod will print error if not able to update location.
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error")
    }
    
    @IBAction func toNext()
    {
         food.place = placeTF.text
        
        if ((placeTF.text! == "") || ((placeTF.text?.characters.count)!) > 60)
        {
            warningLbl.text = "please fill all the fields"
            warningLbl.textColor = UIColor.red
        }
        else{
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "FoodPhotoChoice") as! AddFoodPhotoViewController
            secondViewController.food = food

            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        
        print(food.place)
    }
    
}
