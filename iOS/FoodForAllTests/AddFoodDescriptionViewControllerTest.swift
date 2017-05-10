//
//  AddFoodDescriptionViewControllerTest.swift
//  FoodForAll
//
//  Created by Wing Kha on 10.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import XCTest
@testable import FoodForAll

class AddFoodDescriptionViewControllerTest: XCTestCase {
    
    let addFoodDescriptionViewController = AddFoodDescriptionViewController()
    
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
        
        let maxDateAsDate = addFoodDescriptionViewController.calMaxDate()
        
        let maxDateAsString = dateFormatter3.string(from: maxDateAsDate as Date)
        XCTAssertEqual(maxDateAsString,"10.05.2018")
        
        //Calendar.current.date(byAdding: .year, value: 1, to: maxDate)
        
        
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
