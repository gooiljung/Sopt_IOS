//
//  MemberService.swift
//  Sopt_group_Assignment
//
//  Created by 정보영 on 2018. 5. 28..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct MemberService: APIService {
    
    static let shareInstance = MemberService()
    func SignIn(user_id:String, user_pw:String, completion: @escaping() -> Void){
        let userData: [String:Any] = [
            "user_id" : user_id,
            "user_pw" : user_pw
        ]
        let URL = url("/signin")
        Alamofire.request(URL, method: .post, parameters: userData, encoding: JSONEncoding.default, headers: nil).responseData() { res in
            switch res.result {
            case .success:
                if let value = res.result.value{
                    let message = JSON(value)["message"].string
                    if message == "Successfully Signin"{
                        completion()
                    }
                    
                    
                }
            case .failure(let err):
                print(err.localizedDescription)
                break
            }
        }
    }
    func SignUp(user_id:String, user_pw:String, completion: @escaping() -> Void){
        let userData: [String:Any] = [
            "user_id" : user_id,
            "user_pw" : user_pw
        ]
        let URL = url("/signup")
        Alamofire.request(URL, method: .post, parameters: userData, encoding: JSONEncoding.default, headers: nil).responseData() { res in
            switch res.result {
            case .success:
                if let value = res.result.value{
                    let message = JSON(value)["message"].string
                    if message == "Already Joined"{
                        completion()
                    }
                    
                    
                }
            case .failure(let err):
                print(err.localizedDescription)
                break
            }
        }
    }
    

}
