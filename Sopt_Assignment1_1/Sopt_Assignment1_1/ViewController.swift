//
//  ViewController.swift
//  Sopt_Assignment1_1
//
//  Created by 정보영 on 2018. 4. 2..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLabel: UILabel!

    @IBOutlet weak var heartLabel: UILabel!
    @IBOutlet weak var joyLabel: UILabel!
    @IBOutlet weak var cryLabel: UILabel!
    @IBOutlet weak var angryLabel: UILabel!

    @IBAction func heartFunc(_ sender: UIButton) {
        if heartLabel.text == "0" {
            heartLabel.text = "1"
            sender.setImage(UIImage(named: "heart"), for: UIControlState.normal)
            topLabel.isHidden = false
            topLabel.text = "좋아요~"
            
            
        }else {
            heartLabel.text = "0"
            sender.setImage(UIImage(named: "heartEmpty"), for: UIControlState.normal)
            topLabel.isHidden = true
            topLabel.text = nil
        }
    }
    
    
    
    @IBAction func joyFunc(_ sender: UIButton) {
        if joyLabel.text == "0"{
            joyLabel.text = "1"
            topLabel.isHidden = false
            topLabel.text = "웃겨요~"
        }else {
            joyLabel.text = "0"
            topLabel.isHidden = true
            topLabel.text = nil
        }
    }
    
    
    @IBAction func cryFunc(_ sender: UIButton) {
        if cryLabel.text == "0"{
            cryLabel.text = "1"
            topLabel.isHidden = false
            topLabel.text = "슬퍼요~"
        }else {
            cryLabel.text = "0"
            topLabel.isHidden = true
            topLabel.text = nil
        }
    }
    
    @IBAction func angryFunc(_ sender: UIButton) {
        if angryLabel.text == "0"{
            angryLabel.text = "1"
            topLabel.isHidden = false
            topLabel.text = "화나요~"
        }else {
            angryLabel.text = "0"
            topLabel.isHidden = true
            topLabel.text = nil
        }
    }
    
    
}

