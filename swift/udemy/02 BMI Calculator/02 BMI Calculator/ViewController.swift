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
        return Double(weight) / (Double(age) * Double(height))
    }
    @IBAction func calculatorBMI(_ sender: UIButton) {
        yourName = txtYourName.text!
        yourAge = Int(txtYourAge.text!)!
        yourWeight = Int(txtYourWeight.text!)!
        yourHeight = Int(txtYourHeight.text!)!
        
        result = calcBMI(age: yourAge, height: yourHeight, weight: yourWeight)
        if(result < 18.5){
            resultCalc = "Can nang thap"
        }
        else if(result >= 18.5 && result <= 24.9){
            resultCalc = "Binh thuong"
        }
        else if(result > 24.9 && result < 29.9){
            resultCalc = "Tien beo phi"
        }
        print(result)
        resultCalc = "Your name: \(yourName)\n - BMI: \(result)\n - Ket luan: \(resultCalc)"
        lbResult.text = resultCalc
    }
    
}

