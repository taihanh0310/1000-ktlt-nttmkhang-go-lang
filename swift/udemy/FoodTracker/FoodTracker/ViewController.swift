//
//  ViewController.swift
//  FoodTracker
//
//  Created by Drcom Asia on 1/18/19.
//  Copyright © 2019 Drcom Asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextFiel: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // handle the text field's user input through delegate callbacks
        nameTextFiel.delegate = self
    }
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        print("press nhe")
        mealNameLabel.text = "Default Text"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

