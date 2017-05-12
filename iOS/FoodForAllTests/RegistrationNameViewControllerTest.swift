//
//  RegistrationNameViewControllerTest.swift
//  FoodForAll
//
//  Created by Wing Kha on 08.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import XCTest
@testable import FoodForAll

class RegistrationNameViewControllerTest: XCTestCase {
    
    let registrationNameViewController = RegistrationNameViewController()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        XCTAssertFalse(registrationNameViewController.isInputValid(inputLength: "asdf".characters.count))
        
        XCTAssertTrue(registrationNameViewController.isInputValid(inputLength: "funf5".characters.count))
        
        XCTAssertTrue(registrationNameViewController.isInputValid(inputLength: "sechs6".characters.count))
        
        
         XCTAssertTrue(registrationNameViewController.isInputValid(inputLength: "Zwanzig20Zzwanzig20".characters.count))
        
         XCTAssertTrue(registrationNameViewController.isInputValid(inputLength: "Zzwanzig20Zzwanzig20".characters.count))
        
         XCTAssertFalse(registrationNameViewController.isInputValid(inputLength: "Zzwanzig20Zzwanzig201".characters.count))
        
        
        
        
        
        //XCTAssertFalse(registrationNameViewController.isInputValid (asd@fhnwch"))
        
        
        //XCTAssertFalse(registrationNameViewController.toPasswordVC(emailAddressString: "fhnw.ch"))
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
