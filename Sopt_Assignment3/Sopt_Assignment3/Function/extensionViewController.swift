//
//  extensionViewController.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import Foundation
import UIKit
extension NSObject {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// 옵셔널 바인딩 function
extension UIViewController {
    // string? 옵셔널 바인딩
    func gsno(_ value: String?) -> String {
        return value ?? ""
    }
    
    // int? 옵셔널 바인딩
    func gino(_ value: Int?) -> Int {
        //        return value ?? 0
        
        if let value_ = value {
            return value_
        } else {
            return 0
        }
    }
}
