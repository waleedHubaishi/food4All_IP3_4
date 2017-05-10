//
//  AddFoodNameViewControllerTest.swift
//  FoodForAll
//
//  Created by Wing Kha on 09.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import XCTest
@testable import FoodForAll

class AddFoodNameViewControllerTest: XCTestCase {
    
    let addFoodNameViewController = AddFoodNameViewController()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
       
        
        
        XCTAssertTrue(addFoodNameViewController.isInputValid(inputString: "a"))
        
        XCTAssertTrue(addFoodNameViewController.isInputValid(inputString: "Ei"))
        
        XCTAssertTrue(addFoodNameViewController.isInputValid(inputString: "bio"))

        XCTAssertTrue(addFoodNameViewController.isInputValid(inputString: "Zzwanzig20Zzwanzig2"))
        
        XCTAssertTrue(addFoodNameViewController.isInputValid(inputString: "Zzwanzig20Zzwanzig20"))
        
        XCTAssertFalse(addFoodNameViewController.isInputValid(inputString: "Zzwanzig20Zzwanzig201"))
        
        
        
        
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
