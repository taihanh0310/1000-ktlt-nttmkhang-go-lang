//
//  ViewController.swift
//  05 app swoosh
//
//  Created by Drcom Asia on 11/5/18.
//  Copyright © 2018 Drcom Asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // doi background to backgound cua frame
        bgImg.frame = view.frame
        
        // imgae swoosh hien thi ra giua man hinh,
        // cach top screen 50px
        swoosh.frame = CGRect(
            x: (view.frame.size.width / 2) - swoosh.frame.size.width / 2,
            y: 50,
            width: swoosh.frame.size.width,
            height: swoosh.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

