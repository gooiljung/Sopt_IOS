//
//  ViewController.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 3..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit
public var whichRow: Int = 0
public var whichSection: Int = 0
let myProfile: Profile = Profile(name: "정구일", profileImage: #imageLiteral(resourceName: "pikachu8.jpeg"),phone: "010-9185-9260",age: 26, birthday: "10.11", message: "안뇽~~")
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var friends: [Profile] = ModelManager.sharedInstance.friends
    var myProfile: Profile = Profile(name: "정구일", profileImage: #imageLiteral(resourceName: "pikachu8.jpeg"),phone: "010-9185-9260",age: 26, birthday: "10.11", message: "안뇽~~")
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        } else {
            return friends.count
        }
        
    }
    
    // 테이블 뷰의 section header(FriendsTableViewHeaderCell) 의 titleLabel에 들어갈 text
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCell(withIdentifier: "TableViewHeaderCell") as! TableViewHeaderCell
        
        if section == 0 {
            header.titleLabel.text = "내 프로필"
        } else {
            header.titleLabel.text = "친구"
        }
        
        return header
    }
    // 테이블 뷰의 section이 몇 개인지 명시
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier) as! TableViewCell
        
        if indexPath.section == 0 {
            
            cell.nameLabel.text = myProfile.name
            cell.profileImage.image = myProfile.profileImage ?? #imageLiteral(resourceName: "Man.png")
            
            
            /////////////////////////////////
            // 상태메시지가 있다면 messageView가 보여야하고, 없다면 보이지 않아야합니다. if 와 ishidden을 이용해주세요.
            if myProfile.message == nil {
                cell.messageView.isHidden = true
                cell.messageLabel.isHidden = true
            }else {
                cell.messageView.isHidden = false
                cell.messageLabel.isHidden = false
                cell.messageLabel.text = myProfile.message
            }

            
            
            
            
            
            
            
            /////////////////////////////////
            
        } else {
            
            cell.nameLabel.text = friends[indexPath.row].name
            cell.profileImage.image = friends[indexPath.row].profileImage ?? #imageLiteral(resourceName: "Man.png")
            
            /////////////////////////////////
            // 상태메시지가 있다면 messageView가 보여야하고, 없다면 보이지 않아야합니다. if 와 ishidden을 이용해주세요.
            
            if friends[indexPath.row].message == nil {
                cell.messageView.isHidden = true
                cell.messageLabel.isHidden = true
            }else {
                cell.messageView.isHidden = false
                cell.messageLabel.isHidden = false
                cell.messageLabel.text = friends[indexPath.row].message
            }

            
            
            
            
            
            
            
            
            /////////////////////////////////
            
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "SelectedViewController")
        whichRow = indexPath.row
        whichSection = indexPath.section
        present(nextView, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // 대리자(delegate)가 self인 것을 명시해주어야 합니다.
        profileTableView.delegate = self
        profileTableView.dataSource = self
        
        // 테이블 뷰에 내용이 나오지 않는 하단 부분의 선을 없애줍니다.
        profileTableView.tableFooterView = UIView(frame: .zero)
        
        
        // 테이블뷰의 스크롤 위에 새로고침이 되는 action을 추가합니다.
        profileTableView.refreshControl = UIRefreshControl()
        profileTableView.refreshControl?.addTarget(self, action: #selector(startReloadTableView(_:)), for: .valueChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // refreshControl이 돌아갈 때 일어나는 액션
    @objc func startReloadTableView(_ sender: UIRefreshControl) {
        let friend1 = Profile(name: "11111111", profileImage: nil, message: nil)
        friends.append(friend1)
        profileTableView.reloadData()
        sender.endRefreshing()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var profileTableView: UITableView!
    
    
    
    
}

