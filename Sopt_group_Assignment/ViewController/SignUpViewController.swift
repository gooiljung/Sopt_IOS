//
//  SignUpViewController.swift
//  Sopt_group_Assignment
//
//  Created by 정보영 on 2018. 5. 26..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func finishedSignUp(_ sender: UIButton) {
        MemberService.shareInstance.SignUp(user_id: idTextField.text!, user_pw: passwordTextField.text!) {
            self.navigationController?.popViewController(animated: true)
            
        }
        
    }
    

    

}
