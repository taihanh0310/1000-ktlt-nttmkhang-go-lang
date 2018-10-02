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
    var result: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calcBMI(age: Int, height: Int, weight: Int) -> Double {
        return Double((age + height + weight) / 2)
    }
    @IBAction func calculatorBMI(_ sender: UIButton) {
        yourName = txtYourName.text!
        yourAge = Int(txtYourAge.text!)!
        yourWeight = Int(txtYourWeight.text!)!
        yourHeight = Int(txtYourHeight.text!)!
        
        result = calcBMI(age: 10, height: 20, weight: 30)
        print(result)
        resultCalc = "Your name \(result)\n"
//
        lbResult.text = resultCalc
    }
    
}

