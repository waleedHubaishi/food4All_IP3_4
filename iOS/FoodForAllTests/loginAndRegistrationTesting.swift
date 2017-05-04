//
//  loginAndRegistrationTesting.swift
//  FoodForAll
//
//  Created by Wing Kha on 06.04.17.
//  Copyright © 2017 Waleed al-Hubaishi. All rights reserved.
//

import XCTest
@testable import FoodForAll

class loginAndRegistrationTesting: XCTestCase {
    
    let registrationPassword = RegistrationPasswordViewController()
    let test2 = LoginRegistrationViewController()
    let test3 = EmailTextFieldVerficationViewController()
    let test4 = RegistrationPasswordViewController()

    

    override func setUp() {
        super.setUp()
        
        
        
                // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
    
    }
    
    
    func isValidPasswordtest() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        //let test1 = RegistrationPasswordViewController()
        
        XCTAssertFalse(registrationPassword.isValidPassword(passwordString: " "), "False?")
    
    }
    
    func testNr2() {

        
        XCTAssertTrue(test2.isValidPassword(passwordString: "  "), "False again?")
        
        
        }
    
    func testNr3(){
    
        XCTAssertTrue(test3.isValidEmailAddress(emailAddressString: "hello@world.com"), "why not")
        //XCTAssertTrue(test3.isValidEmailAddress(emailAddressString: "hello2gamil.com"), "well, something went wrong")
        
        
    }
    
    func testNr4(){
    
       // XCTAssert
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
