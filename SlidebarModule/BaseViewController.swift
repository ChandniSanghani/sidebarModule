//
//  BaseViewController.swift
//  SlidebarModule
//
//  Created by MAC202 on 8/27/18.
//  Copyright © 2018 MAC202. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        self.addTitleLogo()
    }
    //MARK:- Action methods
    //MARK:- Action methods
    @IBAction private func btnBackTapped(_ sender:UIButton) {
        Global.navigationController?.popViewController(animated: true)
    }
    
    //MARK:- Custom methods
    private func addTitleLogo() {
        let imageView = UIImageView(image:#imageLiteral(resourceName: "logo-icon"))
//        imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        imageView.contentMode = .scaleToFill
        self.navigationItem.titleView = imageView

    }
}
