//
//  Profile.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import Foundation
import UIKit

struct Profile {
    var name: String
    var profileImage: UIImage?
    var phone: String
    var age: Int
    var birthday: String
    var message: String?
    
    init(name: String = "", profileImage: UIImage? = nil,
         phone: String = "", age: Int = 0, birthday: String = "", message: String? = nil) {
        self.name = name
        self.profileImage = profileImage
        self.phone = phone
        self.age = age
        self.birthday = birthday
        self.message = message
    }
}
