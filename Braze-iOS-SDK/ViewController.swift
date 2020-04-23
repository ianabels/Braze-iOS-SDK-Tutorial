//
//  ViewController.swift
//  Braze-iOS-SDK
//
//  Created by Ian Abels on 3/19/20.
//  Copyright © 2020 Ian Abels. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var userIdText: UITextField!
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var customAttributeKeyText: UITextField!
    @IBOutlet weak var customAttributeValText: UITextField!
    @IBOutlet weak var customEventText: UITextField!
    @IBOutlet weak var customEventPropertyKey: UITextField!
    @IBOutlet weak var customEventPropertyValue: UITextField!
    
    @IBOutlet var toolbar: UIToolbar!
    
    // Actions
    @IBAction func userIdSubmit(_ sender: Any) {
        // Below code will execute when User ID Submit button is pressed
        if let userIDVal = userIdText.text {
            print(userIDVal)
            
            // Insert SDK Method to set External User ID
        }
    }
    
    @IBAction func firstNameSubmit(_ sender: Any) {
        // Below code will execute when First Name Submit button is pressed
        if let firstNameVal = firstNameText.text {
            print(firstNameVal)
            
            // Insert SDK Method to set First Name
        }
    }
    
    @IBAction func lastNameSubmit(_ sender: Any) {
        // Below code will execute when Last Name Submit button is pressed
        if let lastNameVal = lastNameText.text {
            print(lastNameVal)
            
            // Insert SDK Method to set Last Name
        }
    }
    
    @IBAction func emailSubmit(_ sender: Any) {
        // Below code will execute when Email Submit button is pressed
         if let emailVal = emailText.text {
             print(emailVal)
             
             // Insert SDK Method to set Email
         }
    }
    
    @IBAction func phoneSubmit(_ sender: Any) {
        // Below code will execute when Phone Submit button is pressed
        if let phoneVal = phoneText.text {
            print(phoneVal)
            
            // Insert SDK Method to set Phone
        }
    }
    
    @IBAction func customAttributeSubmit(_ sender: Any) {
        // Below code will execute when Custom Attributes Submit button is pressed
        if let custAttrKey = customAttributeKeyText.text, let custAttrVal = customAttributeValText.text {
            print(custAttrKey)
            print(custAttrVal)
            
            // Insert SDK Method to log a Custom Attribute
        }
    }
    
    @IBAction func customEventSubmit(_ sender: Any) {
        // Below code will execute when Custom Event button is pressed
        if let eventKey = customEventText.text {
            guard let propertyKey = customEventPropertyKey.text, let propertyVal = customEventPropertyValue.text, !propertyKey.isEmpty, !propertyVal.isEmpty else {
                print(eventKey)
    
                // Insert SDK Method to log Custom Event WITHOUT an Event Property
                
                return
            }
            print(eventKey)
            print(propertyKey)
            print(propertyVal)
            
            // Insert SDK Method to log Custom Event WITH an Event Property
            
        }
    }
    
    // -------------------NO ACTION NEEDED BELOW HERE------------------------
    @IBAction func didClickDoneButton(_ sender: UIBarButtonItem) {
        view.endEditing(true)
        
    }
    
    // Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addToolBar()
    }

    func addToolBar(){
        userIdText.inputAccessoryView = toolbar
        firstNameText.inputAccessoryView = toolbar
        lastNameText.inputAccessoryView = toolbar
        emailText.inputAccessoryView = toolbar
        phoneText.inputAccessoryView = toolbar
        customAttributeKeyText.inputAccessoryView = toolbar
        customAttributeValText.inputAccessoryView = toolbar
        customEventText.inputAccessoryView = toolbar
        customEventPropertyKey.inputAccessoryView = toolbar
        customEventPropertyValue.inputAccessoryView = toolbar
    }
}

