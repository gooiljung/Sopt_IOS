//
//  BrandService.swift
//  Sopt_group_Assignment
//
//  Created by 정보영 on 2018. 6. 2..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct BrandService: APIService{
    
    static let brandShareInstance = BrandService()
    
    func brandInit(completion: @escaping([KoreaFood]) -> Void){
        let URL = url("/shop/-1")
        Alamofire.request(URL, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseData { res in
            switch res.result {
            case .success:
                if let value = res.result.value {
                    let decoder = JSONDecoder()
                    
                    do{
                        let koreaFoodData = try decoder.decode(KoreaFoodData.self, from: value)
                        if koreaFoodData.message == "Successfully Get Shop Data"{
                            completion(koreaFoodData.data)
                        }
                    }catch {
                        
                    }
                    
            
                }
                break
            case .failure(let err):
                print(err.localizedDescription)
                break
                
            }
        }
        
        
    }
}

