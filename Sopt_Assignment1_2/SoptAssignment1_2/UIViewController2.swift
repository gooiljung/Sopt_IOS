//
//  UIViewController2.swift
//  SoptAssignment1_2
//
//  Created by 정보영 on 2018. 4. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class UIViewController2: UIViewController {

    var man:Bool = false
    var woman:Bool = false
    var tempSex:Bool = false
    var countForToggle = 0
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthText: UITextField!
    @IBOutlet weak var partText: UITextField!
    
    func createUser() -> personalInformation {
        
        let tempUser = personalInformation(id: idText.text!, password: passText.text!, name: nameText.text!
            , birth: birthText.text!, part: partText.text!, checkSex: tempSex)
    
        return tempUser
        
    }
    
    @IBAction func createUserButton(_ sender: UIButton) {
        mem.updateValue(createUser(), forKey: idText.text!)
        
    }
    
    @IBAction func menSelected(_ sender: UIButton) {
        if man == false {
            if countForToggle == 0{
                sender.setImage(UIImage(named: "selectedMan"), for: UIControlState.normal)
                man = true
                tempSex = false
                countForToggle += 1
            }
            else if countForToggle>0 && woman == false {
                sender.setImage(UIImage(named: "selectedMan"), for: UIControlState.normal)
                man = true
                tempSex = false
            }
           
        }else{
            sender.setImage(UIImage(named: "Man"), for: UIControlState.normal)
            man = false
        }
    }
    
    @IBAction func womanSelected(_ sender: UIButton) {
       
            if woman == false{
                if countForToggle == 0 {
                    sender.setImage(UIImage(named: "selctedWoman"), for: UIControlState.normal)
                    woman = true
                    tempSex = true
                }else if countForToggle>0 && man == false{
                    sender.setImage(UIImage(named: "selctedWoman"), for: UIControlState.normal)
                    woman = true
                    tempSex = true
                }
                
            }else {
                sender.setImage(UIImage(named: "Woman"), for: UIControlState.normal)
                woman = false
            }
        
    }
    
}
