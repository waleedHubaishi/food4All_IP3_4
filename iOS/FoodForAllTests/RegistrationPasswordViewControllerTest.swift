//
//  RegistrationPasswordViewControllerTest.swift
//  FoodForAll
//
//  Created by Wing Kha on 08.05.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import XCTest
// import AppKit

@testable import FoodForAll

class RegistrationPasswordViewControllerTest: XCTestCase {
    
    let registrationPasswordViewController = RegistrationPasswordViewController()
    
    override func setUp() {
        super.setUp()
        
        
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
   
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        
        
        XCTAssertFalse(registrationPasswordViewController.isValidPassword(passwordString: "sieben7"))
        XCTAssertTrue(registrationPasswordViewController.isValidPassword(passwordString: "achtach8"))
        
        XCTAssertTrue(registrationPasswordViewController.isValidPassword(passwordString: "neunneun9"))
        XCTAssertTrue(registrationPasswordViewController.isValidPassword(passwordString: "feuf5feuf5feuf5feuf5feuf5feuf5feuf5feuf5feuf5feuf5"))
        
        
    
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testEx2() {
        
    XCTAssertTrue(registrationPasswordViewController.isValidPassword(passwordString: "feuf5feuf5feuf5feuf5feuf5feuf5feuf5feuffghfjfgzkgukgfzk5feuf5feuf51"))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
