//
//  AdditionClassTests.swift
//  UnitTestsInIBViewControllersWithSwift
//
//  Created by carlos on 26/1/15.
//  Copyright (c) 2015 Carlos García. All rights reserved.
//

import UIKit
import XCTest

class AdditionClassTests: XCTestCase {
    
    var addition = Addition()
    
    override func setUp() {
        super.setUp()
        
        addition = Addition()
    }
    
    func testAdditionClassExists() {
        XCTAssertNotNil(addition, "Addition class exists")
    }
    
    func testAddTwoPlusTwo() {
        let result = addition.addNumberOne(2, withNumberTwo:2)
        XCTAssertEqual(result, 4, "Addition of 2 + 2 is 4")
    }
    
    func testAddTwoPlusSeven() {
        let result = addition.addNumberOne(2, withNumberTwo:7)
        XCTAssertEqual(result, 9, "Addition of 2 + 7 is 9")
    }
    
}
