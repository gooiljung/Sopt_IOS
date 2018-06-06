//
//  ViewController.swift
//  SoptAssignment1_2
//
//  Created by 정보영 on 2018. 4. 3..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit
struct personalInformation{
    var id:String;
    var password:String;
    var name:String;
    var birth:String;
    var part:String;
    var checkSex = false; // false 일때 남자 true 일때 여자

}
var mem = [String:personalInformation]()//key: ID
var whoseId:String = ""
class ViewController: UIViewController {

    
    
    @IBOutlet weak var idText: UITextField!
    
    @IBOutlet weak var passText: UITextField!
    
    
    @IBAction func loginFunc(_ sender: UIButton) {
        
        if let temp = mem[idText.text!]?.id, let temp2 = mem[idText.text!]?.password {
            if temp == idText.text && temp2 == passText.text{
                whoseId = idText.text!
                let storyboard: UIStoryboard = self.storyboard!
                let nextView = storyboard.instantiateViewController(withIdentifier: "thirdView")
                present(nextView, animated: true, completion: nil)
                
                
            }
        }
    }
}

