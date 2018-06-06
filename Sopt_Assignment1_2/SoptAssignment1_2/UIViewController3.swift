//
//  UIViewController3.swift
//  SoptAssignment1_2
//
//  Created by 정보영 on 2018. 4. 6..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class UIViewController3: UIViewController {

    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var passLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    
    @IBOutlet weak var sexButton: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        idLabel.text = mem[whoseId]?.id
        passLabel.text = mem[whoseId]?.password
        nameLabel.text = mem[whoseId]?.name
        birthLabel.text = mem[whoseId]?.birth
        partLabel.text = mem[whoseId]?.part
        if mem[whoseId]?.checkSex == false {
            sexButton.setImage(UIImage(named: "selectedMan"), for: UIControlState.normal)
        }else{
            sexButton.setImage(UIImage(named: "selctedWoman"), for: UIControlState.normal)
        }
        
    }
    
    
}
