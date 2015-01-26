//
//  AddTwoNumberViewControllerTests.swift
//  UnitTestsInIBViewControllersWithSwift
//
//  Created by carlos on 26/1/15.
//  Copyright (c) 2015 Carlos García. All rights reserved.
//

import UIKit
import XCTest

class AddTwoNumberViewControllerTests: XCTestCase {
    
    var viewController:ViewController!

    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as ViewController
        viewController.loadView()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testViewControllerViewExists() {
        XCTAssertNotNil(viewController.view, "ViewController should contain a view")
    }
    
    func testFirstNumberTextFieldConnection() {
        XCTAssertNotNil(viewController.firstNumberTextField, "firstNumberTextField should be connected")
    }
    
    func testSecondNumberTextFieldConnection() {
        XCTAssertNotNil(viewController.secondNumberTextField, "secondNumberTextField should be connected")
    }
    
    func testResultTextFieldConnection() {
        XCTAssertNotNil(viewController.resultTextField, "resultTextField should be connected")
    }
    
    func testAddButtonConnection() {
        XCTAssertNotNil(viewController.addButton, "addButton should be connected")
    }
    
    func testResetButtonConnection() {
        XCTAssertNotNil(viewController.resetButton, "resetButton should be connected")
    }
    
    func testAddButtonCheckIBAction() {
        let actions = viewController.addButton.actionsForTarget(viewController, forControlEvent: UIControlEvents.TouchUpInside) as [String]
        XCTAssertTrue(contains(actions, "addNumbers:"), "addButton should contains addNumbers action")
    }
    
    func testResetButtonCheckIBAction() {
        let actions = viewController.resetButton.actionsForTarget(viewController, forControlEvent: UIControlEvents.TouchUpInside) as [String]
        XCTAssertTrue(contains(actions, "resetFields:"), "resetButton should contains resetFields action")
    }
    
    func testAddingTenPlusTwentyShouldBeThirty() {
        viewController.firstNumberTextField.text = "10"
        viewController.secondNumberTextField.text = "20"
        viewController.addButton.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
        XCTAssertEqual(viewController.resultTextField.text, "30", "resultTextField text should be 30")
    }
    
    func testResetButtonShouldClearFields() {
        viewController.firstNumberTextField.text = "10"
        viewController.secondNumberTextField.text = "20"
        viewController.resultTextField.text = "30"
        viewController.resetButton.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
        XCTAssertEqual(viewController.firstNumberTextField.text, "", "resultTextField text should be \"\"")
        XCTAssertEqual(viewController.secondNumberTextField.text, "", "resultTextField text should be \"\"")
        XCTAssertEqual(viewController.resultTextField.text, "", "resultTextField text should be \"\"")
    }

}
