//
//  AddFoodPickUpViewControllerTest.swift
//  FoodForAll
//
//  Created by Wing Kha on 09.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import XCTest
@testable import FoodForAll

class AddFoodPickUpViewControllerTest: XCTestCase {
    
    let addFoodPickUpViewController = AddFoodPickUpViewController()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let dateFormatter3 = DateFormatter()
        dateFormatter3.timeStyle = .medium
        dateFormatter3.dateFormat = "dd.MM.yyyy"
        
        let maxDateAsDate = addFoodPickUpViewController.calMaxDate(expirationDate: "11.11.2017")
        
    let maxDateAsString = dateFormatter3.string(from: maxDateAsDate)
        
        XCTAssertNotEqual(maxDateAsString, "10.11.2017")
        
        XCTAssertEqual(maxDateAsString, "11.11.2017")
        
        XCTAssertNotEqual(maxDateAsString, "12.11.2017")
        
        
      
        

        
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
