//
//  ViewController.swift
//  UnitTestsInIBViewControllersWithSwift
//
//  Created by carlos on 26/1/15.
//  Copyright (c) 2015 Carlos García. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addNumbers(sender: AnyObject) {
        let addition = Addition()
        let a = Int((firstNumberTextField.text as NSString).intValue)
        let b = Int((secondNumberTextField.text as NSString).intValue)
        let result = addition.addNumberOne(a, withNumberTwo: b)
        resultTextField.text = "\(result)"
    }
    
    @IBAction func resetFields(sender: AnyObject) {
        firstNumberTextField.text = ""
        secondNumberTextField.text = ""
        resultTextField.text = ""
    }


}

