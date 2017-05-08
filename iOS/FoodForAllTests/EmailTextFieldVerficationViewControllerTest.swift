//
//  EmailTextFieldVerficationViewControllerTest.swift
//  FoodForAll
//
//  Created by Wing Kha on 08.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import XCTest
@testable import FoodForAll

class EmailTextFieldVerficationViewControllerTest: XCTestCase {
    
    let emailTextFieldVerficationViewController = EmailTextFieldVerficationViewController()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        XCTAssertFalse(emailTextFieldVerficationViewController.isValidEmailAddress(emailAddressString: "asd"))
        XCTAssertFalse(emailTextFieldVerficationViewController.isValidEmailAddress(emailAddressString: "asd@fhnwch"))
        XCTAssertFalse(emailTextFieldVerficationViewController.isValidEmailAddress(emailAddressString: "fhnw.ch"))
        
        XCTAssertTrue(emailTextFieldVerficationViewController.isValidEmailAddress(emailAddressString: "asd@fhnw.ch"))
        
        
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
