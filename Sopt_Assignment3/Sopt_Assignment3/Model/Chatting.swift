//
//  Chatting.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import Foundation
import UIKit
struct Chatting {
    
    var friends: [Profile]
    
    var title: String
    var image: UIImage?
    var lastContent: String
    var chattingCount: Int
    var date: String
    var numOfPeople : Int
    
    init(friends: [Profile] = [Profile](), id: Int = -1, title: String = "",
         image: UIImage? = nil, lastContent: String = "", chattingCount: Int = 0, date: String = "방금", numOfPeople: Int = 0){
        self.friends = friends
        self.title = title
        self.image = image
        self.lastContent = lastContent
        self.chattingCount = chattingCount
        self.date = date
        self.numOfPeople = numOfPeople
    }
}

