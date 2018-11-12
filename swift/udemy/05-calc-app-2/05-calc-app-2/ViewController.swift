//
//  ViewController.swift
//  05-calc-app-2
//
//  Created by Drcom Asia on 11/12/18.
//  Copyright © 2018 Drcom Asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtSoThuNhat: UITextField!
    @IBOutlet weak var txtSoThuHai: UITextField!
    
    @IBOutlet weak var lbKetQua: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnCongPressed(_ sender: Any) {
        let soThuNhat: Int = Int(txtSoThuNhat.text!) ?? 0
        let soThuHai: Int = Int(txtSoThuHai.text!) ?? 0
        
        let ketQua = simpleCalculator(
            soThuNhat: soThuNhat,
            soThuHai: soThuHai,
            toanTu: "+")
        lbKetQua.text = "Kết quả là: \(ketQua)"
    }
    
    @IBAction func btnTruPressed(_ sender: Any) {
        let soThuNhat: Int = Int(txtSoThuNhat.text!) ?? 0
        let soThuHai: Int = Int(txtSoThuHai.text!) ?? 0
        
        let ketQua = simpleCalculator(
            soThuNhat: soThuNhat,
            soThuHai: soThuHai,
            toanTu: "-")
        lbKetQua.text = "Kết quả là: \(ketQua)"
    }
    
    @IBAction func btnNhanPressed(_ sender: Any) {
        let soThuNhat: Int = Int(txtSoThuNhat.text!) ?? 0
        let soThuHai: Int = Int(txtSoThuHai.text!) ?? 0
        
        let ketQua = simpleCalculator(
            soThuNhat: soThuNhat,
            soThuHai: soThuHai,
            toanTu: "x")
        lbKetQua.text = "Kết quả là: \(ketQua)"
    }
    
    @IBAction func btnChiaPressed(_ sender: Any) {
        let soThuNhat: Int = Int(txtSoThuNhat.text!) ?? 0
        let soThuHai: Int = Int(txtSoThuHai.text!) ?? 0
        
        let ketQua = simpleCalculator(
            soThuNhat: soThuNhat,
            soThuHai: soThuHai,
            toanTu: "/")
        lbKetQua.text = "Kết quả là: \(ketQua)"
    }
    
    
    func simpleCalculator(soThuNhat:Int, soThuHai:Int, toanTu:String) -> Int{
        var tong:Int = 0
        switch toanTu {
        case "+":
            tong = soThuNhat + soThuHai
        break
        case "-":
            tong = soThuNhat - soThuHai
            break
        case "x":
            tong = soThuNhat * soThuHai
            break
        case "/":
            tong = soThuNhat / soThuHai
            break
        default:
            tong = 0
            break
        }
        
        return tong
    }

}

