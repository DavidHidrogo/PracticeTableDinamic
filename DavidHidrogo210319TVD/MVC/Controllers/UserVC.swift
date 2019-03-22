//
//  ViewController.swift
//  DavidHidrogo210319TVD
//
//  Created by upgop on 21/03/19.
//  Copyright © 2019 upgop. All rights reserved.
//

import UIKit

class UserVC: UIViewController
{
    var users: [User] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setUsersDefault()
       
    }
    
    func setUsersDefault()
    {
        self.users.append(User(firstName: "David", lastName: "Hidrogo"))
        self.users.append(User(firstName: "Jacqueline", lastName: "Avila"))
        self.users.append(User(firstName: "Kevin", lastName: "Hernandez"))
        self.users.append(User(firstName: "Eduardo", lastName: "Ochoa"))
        self.users.append(User(firstName: "Isai", lastName: "Lopez"))
    }
}

extension UserVC:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTVCell", for: indexPath) as! UserTVCell
        
       
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.firstName!) \(user.lastName!)"
        
        return cell
    }
}

extension UserVC: UITableViewDelegate
{
    func tableView(_ tableView:UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt.indexPath.row \(indexPath.row)")
    }
}

