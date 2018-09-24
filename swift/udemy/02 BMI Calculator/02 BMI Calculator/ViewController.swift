//
//  ViewController.swift
//  02 BMI Calculator
//
//  Created by Drcom Asia on 9/19/18.
//  Copyright © 2018 Drcom Asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sexSelected: UISwitch!
    @IBOutlet weak var txtYourName: UITextField!
    
    @IBOutlet weak var txtYourAge: UITextField!
    
    @IBOutlet weak var txtYourWeight: UITextField!
    
    @IBOutlet weak var txtYourHeight: UITextField!
    
    @IBOutlet weak var lbResult: UILabel!
    
    // declare input
    var yourName: String = ""
    var yourAge: Int = 0
    var yourWeight: Int = 0
    var yourHeight: Int = 0
    var resultCalc: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculatorBMI(_ sender: UIButton) {
        var result: Decimal
        yourName = txtYourName.text!
        yourAge = Int(txtYourAge.text!)!
        yourWeight = Int(txtYourWeight.text!)!
        yourHeight = Int(txtYourHeight.text!)!
        
        result = 50 + (0.75 * (yourHeight - 150)) + ((yourAge - 20) / 4)
        resultCalc = "Your name \(result)\n"
        
        lbResult.text = resultCalc
    }
    
}

