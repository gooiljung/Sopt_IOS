//
//  chattingManager.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import Foundation
import UIKit

struct chattingManager{
    static let sharedInstance = chattingManager()
    var chattings: [Chatting] = [Chatting]()
    var friends: [Profile] = ModelManager.sharedInstance.friends
    init() {
        let chatting1 = Chatting(friends: friends, title: "과제5조",image: #imageLiteral(resourceName: "pikachu6.jpeg"), lastContent: "과제어렵당~",chattingCount: 20, date: "방금", numOfPeople: 4)
        self.chattings = [chatting1]
        
    }
    
   
    
    
    
}
