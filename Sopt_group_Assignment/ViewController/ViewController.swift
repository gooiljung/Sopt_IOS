//
//  ViewController.swift
//  Sopt_group_Assignment
//
//  Created by 정보영 on 2018. 5. 26..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func Login(_ sender: UIButton) {
     
        MemberService.shareInstance.SignIn(user_id: idTextField.text!, user_pw: passwordTextField.text!) {
            
            if let mainVC = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") {
                
                self.navigationController?.present(mainVC, animated: true, completion: nil)
                
            }
        }
        
    }
  
    
    
    @IBAction func SignUp(_ sender: UIButton) {
     if let secondVC = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController {
        secondVC.navigationItem.title = "회원가입"
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

  

}

