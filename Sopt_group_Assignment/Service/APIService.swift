//
//  APIService.swift
//  Sopt_group_Assignment
//
//  Created by 정보영 on 2018. 5. 28..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import Foundation

protocol APIService{}

extension APIService{
    func url(_ path: String) -> String {
        return "http://13.124.137.139:3000" + path
    }
}
