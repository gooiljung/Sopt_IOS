//
//  UIViewController3.swift
//  SoptAssignment1_2
//
//  Created by 정보영 on 2018. 4. 6..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class UIViewController3: UIViewController {

    @IBOutlet weak var idLabel: UILabel!
    
   
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var birthLabel: UILabel!
    
    @IBOutlet weak var sexButton: UIButton!
    
    
    @IBOutlet weak var sopt: UILabel!
    
    
    @IBOutlet weak var partLabel: UILabel!
    
    @IBOutlet weak var passLabel: UILabel!
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
        idLabel.text = mem[whoseId]?.id
        passLabel.text = mem[whoseId]?.password
        nameLabel.text = mem[whoseId]?.name
        birthLabel.text = mem[whoseId]?.birth

        if mem[whoseId]?.checkSex == false {
            sexButton.setImage(UIImage(named: "selectedMan"), for: UIControlState.normal)
        }else{
            sexButton.setImage(UIImage(named: "selctedWoman"), for: UIControlState.normal)
        }
        sopt.text = "S.O.P.T 는 Shout Our Passion Together의 약자로 대학생 연합 동아리입니다. \n 동아리는 수도권 지역 대학의 대학생들로 구성 되어있으며, IT 벤처 창업을 목적으로 하고 있습니다. \n 매주 토요일 기획 개발 디자인 파트의 세미나 프로그램과 각종 협업 프로그램을 통하여 실력을 향상을 도모합니다. \n 또한 App-Jam, 해커톤,컨퍼런스,멘토링,네트워킹 파티와 다양한 친목행사 등을 진행하고 있습니다."
        selectPart(part: (mem[whoseId])!)
        sopt.lineBreakMode = NSLineBreakMode.byWordWrapping
        partLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
    }
   
    func selectPart(part: personalInformation){
        let 기획 = " 기획 파트 \n - 아이디어 디벨롭핑 시간을 통해 본인의 아이디어를 발전시키고 기획안을 완성하는 것을 목표로 합니다. \n - 디자인 및 개발파트와의 협업을 위해 필요한 정보를 습득합니다. \n - 기획자이자 프로젝트 매니저로서의 역할 수행이 가능하도록 합니다."
        let 디자인 = " 디자인 파트 \n - 매주 세미나에서의 강연과 실습을 통해 UI/ UX에 관련하여 디자이너가 알아야 할 개념을 숙지합니다. \n - 이를 디자인 툴로 적용할 수 있는 것을 목표로 합니다. \n - 개발자와의 수월한 소통을 위하여 사용되는 협업툴에 관련된 스터디를 진행합니다."
        let 안드로이드 = "안드로이드 파트 \n - 안드로이드 스튜디오를 이용해 기초적인 네이티브 어플리케이션 제작 방법에 대해서 배웁니다. \n - API 사용법 및 통신에 대해서 배웁니다. \n - 기초적인 어플리케이션의 디자인 방법에 대해 배웁니다. \n - 각 세미나 실습 결과물 + 과제를 컴포넌트로 분리하여 8주의 세미나 후에 1~8 주차의 내용이 담긴 하나의 결과물을 남겨 앱잼을 진행하는데 많은 도움이 될 수 있도록 하는 것을 목표로 합니다. \n - 새로운 안드로이드 공식 언어인 코틀린에 대해 배웁니다."
        let ios = "iOS 파트 \n - Xcode(통합개발환경)와 Swift를 이용해 iOS 어플리케이션 프로그래밍을 배웁니다. \n- Interface builder를 이용한 레이아웃 구성 및 네트워크 통신 방법에 대해 배웁니다. \n - 매주 실습 세미나를 통해 iOS개발 기초부터 심화까지 1인 1앱 개발을 목표로 공부합니다. \n - Open API 사용법을 숙지합니다."
        let 서버 = "서버 파트 \n - Node.js를 이용해 AWS상에서 서버를 구성하는 방법을 배워봅니다. \n - 클라이언트와 서버, DB 사이의 연동과정을 이해하고 구성합니다. \n - 코딩뿐만 아니라 ERD 설계, API Reference 작성 등 프로젝트에서 백엔드를 담당하여 진행하는 과정 전체를 경험합니다."
        let 웹 = "Web Front-End 파트 \n - 기본적인 HTML, CSS 부터 컴포넌트 기반 웹 개발에 대해서 배웁니다. \n - 매주 실습 세미나를 통해 Vue.js의 기초부터 심화까지 공부합니다. \n - API 사용법 및 통신에 대해서 배웁니다."
        let partArray = [기획, 디자인, 안드로이드, ios, 서버 , 웹]
        let checkArray = ["기획", "디자인", "안드로이드", "ios", "서버", "웹"]
        var k = 0;
        for temp in checkArray {
            if temp == part.part {
                partLabel.text = partArray[k]
            }
            k += 1
        }
        
    }
    
    
    
    @IBAction func logOut(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "로그아웃", message: "정말 떠나시겠습니까?", preferredStyle: .alert)
        let doneButton = UIAlertAction(title: "확인", style: .default, handler:{ ACTION in
            self.performSegue(withIdentifier: "unwindSegueTo1", sender: nil)
            
        })
            
       
        let cancelButton = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(doneButton)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
        
       
        

       
    }
    
}
