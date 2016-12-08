//
//  addFoodPlaceViewController.swift
//  FoodForAll
//
//  Created by Waleed al-Hubaishi on 01.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit


class addFoodPlaceViewController: UIViewController {
    
    @IBOutlet weak var placeLbl: UILabel!
    
    @IBOutlet weak var progressPhoto: UIImageView!
    
    @IBOutlet weak var placeTF: UITextField!
    
    @IBOutlet weak var choseMyAddressTF: UITextField!

    //@IBOutlet  weak var myPlaceMap: MKMapView!
    @IBOutlet weak var toAddPhotoBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "myfridge.png"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 65, height: 40)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
    }
    
//    override func loadView() {
//        navigationItem.title = "Hello Map"
//        
//        let camera = GMSCameraPosition.camera(withLatitude: -33.868,
//                                              longitude: 151.2086,
//                                              zoom: 14)
//        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
//        
//        let marker = GMSMarker()
//        marker.position = camera.target
//        marker.snippet = "Hello World"
//        marker.appearAnimation = kGMSMarkerAnimationPop
//        marker.map = mapView
//        
//        view = mapView
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
