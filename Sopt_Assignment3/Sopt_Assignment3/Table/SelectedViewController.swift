//
//  SelectedViewController.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class SelectedViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        labelView.layer.borderWidth = 1;
        labelView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = profileImage.layer.frame.width/2
        
        profileImage.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        profileImage.layer.borderWidth = 0.1
        secondLabelView.layer.cornerRadius = 3
        thirdLabelView.layer.cornerRadius = 3
        insertInformation()
        
      

        // Do any additional setup after loading the view.
    }
    func insertInformation(){
        var friends: [Profile] = ModelManager.sharedInstance.friends
        if whichSection == 0 {
            messageLabel.text = myProfile.message
            profileImage.image = myProfile.profileImage
            nameLabel.text = myProfile.name
            phoneLabel.text = myProfile.phone
            birthLabel.text = myProfile.birthday
            ageLabel.text = String(myProfile.age)
            
        }else{
            if friends[whichRow].profileImage == nil {
                profileImage.image = #imageLiteral(resourceName: "Man.png")
            }else{
                 profileImage.image = friends[whichRow].profileImage
            }
            if friends[whichRow].age == 0 {
                 ageLabel.text = ""
            }else{
                 ageLabel.text = String(friends[whichRow].age)
            }
            messageLabel.text = friends[whichRow].message
           
            nameLabel.text = friends[whichRow].name
            phoneLabel.text = friends[whichRow].phone
            birthLabel.text = friends[whichRow].birthday
            
            
            
        }
        
        
    }
    
    @IBAction func dissmissAction(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    
    
    @IBOutlet weak var labelView: UIView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var secondLabelView: UIView!
    @IBOutlet weak var thirdLabelView: UIView!
    
}
