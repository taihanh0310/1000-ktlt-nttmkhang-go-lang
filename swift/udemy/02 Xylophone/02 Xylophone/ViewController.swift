//
//  ViewController.swift
//  02 Xylophone
//
//  Created by Hanh Nguyen on 9/24/18.
//  Copyright © 2018 Hanh Nguyen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupPlayAutio(fileName: String){
        let path = Bundle.main.path(forResource: fileName, ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch {
            print("error")
        }
    }
    
    @IBAction func btn1OnPress(_ sender: UIButton) {
        setupPlayAutio(fileName: "note1.wav")
    }
    @IBAction func btn2OnPress(_ sender: UIButton) {
        setupPlayAutio(fileName: "note2.wav")
    }
    @IBAction func btn3OnPress(_ sender: UIButton) {
        setupPlayAutio(fileName: "note3.wav")
    }
    @IBAction func btn4OnPress(_ sender: UIButton) {
        setupPlayAutio(fileName: "note4.wav")
    }
    @IBAction func btn5OnPress(_ sender: UIButton) {
        setupPlayAutio(fileName: "note5.wav")
    }
    @IBAction func btn6OnPress(_ sender: Any) {
        setupPlayAutio(fileName: "note6.wav")
    }
    @IBAction func btn7OnPress(_ sender: Any) {
        setupPlayAutio(fileName: "note7.wav")
    }
}

