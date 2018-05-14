//
//  TableViewCell2.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = profileImage.layer.frame.width/2
        
        profileImage.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        profileImage.layer.borderWidth = 0.1
        
        numOfChattingView.layer.cornerRadius = 3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var chattingLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var numOfChattingLabel: UILabel!
    @IBOutlet weak var numOfPeopleLabel: UILabel!
    
    @IBOutlet weak var numOfChattingView: UIView!
}
