//
//  RegistrationCaptchaViewController.swift
//  FoodForAll
//
//  Created by Hussein Farzi on 08.12.16.
//  Copyright © 2016 Waleed al-Hubaishi. All rights reserved.
//

import UIKit

class RegistrationCaptchaViewController: UIViewController {

    var person: Person = Person()
    
    @IBOutlet weak var verifyL: UILabel!
    
    @IBOutlet weak var verifyTF: UITextField!
    
    @IBAction func goToHome(_ sender: Any) {
        
        if (verifyL.text! == verifyTF.text!) {
            
            let url = NSURL(string: "http://86.119.36.198/register.php")
            
            var request = URLRequest(url: url! as URL)
            request.httpMethod = "POST"
            
            let dataString = "Name=\(person.userName!)" +
                             "&Email=\(person.email!)" +
                             "&Password=\(person.password!)"
            let dataDB = dataString.data(using: .utf8)
            do {
                let uploadTask = URLSession.shared.uploadTask(with: request, from: dataDB) {
                    data, response, error in
                    if error != nil {
                        DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Fehler", message: "Verbindung zum Server ist unterbrochen. Überprüfen Sie Ihre Internetverbindung!", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    }
                    else {
                        DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Bestätigung", message: "Sie sind erfolgreich registeriert!", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    }
                }
                uploadTask.resume()
            }
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SearchHome") as! SearchHomeViewController
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }
        else {
            displayAlertMessage(messageToDisplay: "Versuchen Sie nochmal!")
        }
    }
    
    func displayAlertMessage(messageToDisplay: String)
    {
        print(messageToDisplay)
        let alertController = UIAlertController(title: "Fehler", message: messageToDisplay, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
