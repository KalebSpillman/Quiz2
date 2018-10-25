//
//  ViewController.swift
//  IosQuiz2
//
//  Created by Kaleb Spillman on 10/25/18.
//  Copyright © 2018 Kaleb Spillman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard
        let firstName = firstNameTextField.text, !firstName.isEmpty,
        let lastName = lastNameTextField.text, !lastName.isEmpty,
        let email = emailTextField.text, !email.isEmpty
            else {
             return
        }
        let person = UIAlertController(title: "Greetings", message: "hello \(firstName) \(lastName) your email address is \(email).", preferredStyle: UIAlertController.Style.alert)
        let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {UIAlertAction in}
        self.present(person, animated: true, completion: nil)
    }




}
