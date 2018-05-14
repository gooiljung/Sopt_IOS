//
//  ViewController2.swift
//  Sopt_Assignment3
//
//  Created by 정보영 on 2018. 5. 5..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class ViewController2: UIViewController , UITableViewDelegate, UITableViewDataSource{
    var chattings: [Chatting] = chattingManager.sharedInstance.chattings
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        //대화 수 리턴하기
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell2.reuseIdentifier) as! TableViewCell2
        cell.chattingLabel.text = chattings[indexPath.row].lastContent
        cell.profileImage.image = chattings[indexPath.row].image ?? #imageLiteral(resourceName: "Man.png")
        cell.titleLabel.text = chattings[indexPath.row].title
        cell.dateLabel.text = chattings[indexPath.row].date
        cell.numOfChattingLabel.text = String(chattings[indexPath.row].chattingCount)
        cell.numOfPeopleLabel.text = String(chattings[indexPath.row].numOfPeople)
        
        
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        profileTableView2.delegate = self
        profileTableView2.dataSource = self
        profileTableView2.tableFooterView = UIView(frame: .zero)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var profileTableView2: UITableView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
