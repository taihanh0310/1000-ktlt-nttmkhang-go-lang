//
//  ViewController.swift
//  05-calc-2-number
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

    @IBAction func onPressTinhTong(_ sender: Any) {
        let soThuNhat:Int = Int(txtSoThuNhat.text!) ?? 0
        let soThuHai:Int = Int(txtSoThuHai.text!) ?? 0
        let ketqua = soThuNhat + soThuHai
        lbKetQua.text = "Kết quả: \(ketqua)"
    }
    
}

