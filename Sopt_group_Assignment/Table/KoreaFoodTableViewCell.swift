//
//  KoreaFoodTableViewCell.swift
//  Sopt_group_Assignment
//
//  Created by 정보영 on 2018. 5. 28..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class KoreaFoodTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func selectedBrandContent(_ sender: Any) {
        
    }
    
}
