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
        if idText.text == "" || passText.text == "" {
            let alert = UIAlertController(title: "로그인", message: "ID or Password 를 입력하세요", preferredStyle: .alert)
            let doneButton = UIAlertAction(title: "확인",style: .default, handler: nil)
            
            alert.addAction(doneButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        if let temp = mem[idText.text!]?.id, let temp2 = mem[idText.text!]?.password {
            if temp == idText.text && temp2 == passText.text{
                whoseId = idText.text!
                let storyboard: UIStoryboard = self.storyboard!
                let nextView = storyboard.instantiateViewController(withIdentifier: "thirdView")
                present(nextView, animated: true, completion: nil)
                
                
            }else {
                let alert = UIAlertController(title: "로그인", message: "잘못된 회원정보 입니다.", preferredStyle: .alert)
                let doneButton = UIAlertAction(title: "확인",style: .default, handler: nil)
                
                alert.addAction(doneButton)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    
    @IBAction func pushAction(_ sender: Any) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondView") as? UIViewController2{
        
            
                self.navigationController?.pushViewController(secondVC, animated: true)
        
        
                }
    }
 
    @IBAction  func unwindToFirstVC(segue:UIStoryboardSegue){

    }

    
    
    
    
    
    
    
    
    
}

