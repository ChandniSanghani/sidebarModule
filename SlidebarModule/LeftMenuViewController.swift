//
//  LeftMenuViewController.swift
//  AKSideMenuSimple
//
//  Created by Diogo Autilio on 6/7/16.
//  Copyright © 2016 AnyKey Entertainment. All rights reserved.
//

import UIKit

public class LeftMenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView?
    var arrMenuItem = ["How it works","Terms of Service","Logout"]

    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Action methods
    @IBAction private func btnBackTapped(_ sender:UIButton) {
        self.sideMenuViewController?.hideMenuViewControllerAnimated(true)
    }

}
extension LeftMenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection sectionIndex: Int) -> Int {
        return arrMenuItem.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier: String = "Cell"
        
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
            cell?.selectionStyle = .none
            cell!.backgroundColor = .clear
            cell!.textLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        }
        cell!.textLabel?.text = arrMenuItem[indexPath.row]
        return cell!
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            let howItWorksViewController = self.storyboard?.instantiateViewController(withIdentifier: "HowItWorksViewController") as! HowItWorksViewController
            Global.navigationController?.pushViewController(howItWorksViewController, animated: true)
            self.sideMenuViewController!.setContentViewController(Global.navigationController!, animated: true)
            self.sideMenuViewController!.hideMenuViewController()
            
        case 1:
            let termsOfServiceViewController = self.storyboard?.instantiateViewController(withIdentifier: "TermsOfServiceViewController") as! TermsOfServiceViewController
            Global.navigationController?.pushViewController(termsOfServiceViewController, animated: true)
            self.sideMenuViewController!.setContentViewController(Global.navigationController!, animated: true)
            self.sideMenuViewController!.hideMenuViewController()
        case 2:
            // Logout
            break
        default:
            break
        }
    }
}
