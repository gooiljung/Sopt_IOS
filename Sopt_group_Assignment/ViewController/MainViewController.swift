//
//  secondViewController.swift
//  Sopt_group_Assignment
//
//  Created by 정보영 on 2018. 5. 28..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "메인"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func koreaFood(_ sender: UIButton) {
        if let nextVC = storyboard?.instantiateViewController(withIdentifier: "KoreaFood"){
            self.navigationController?.present(nextVC, animated: true, completion: nil)
        }
        
    }
    

}
