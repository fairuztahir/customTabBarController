//
//  CustomTabBarController.swift
//  iowc
//
//  Created by Fairuz Tahir on 08/03/2018.
//  Copyright © 2018 iopenwise. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let statusBarBackgroundView = UIView()
//        statusBarBackgroundView.backgroundColor = UIColor.rgb(194, green: 31, blue: 31)
//
//        self.view.addSubview(statusBarBackgroundView)
//
//        statusBarBackgroundView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        let firstController = HomeController()
        let iowcController = UINavigationController(rootViewController: firstController)
        iowcController.tabBarItem.title = "Home"
        iowcController.tabBarItem.image = UIImage(named: "Sk")
        self.tabBar.barTintColor = UIColor.rgb(17, green: 18, blue: 18)
        self.tabBar.tintColor = .white
//        self.tabBar.unselectedItemTintColor = .red
        
        let second: String = "Other"
        viewControllers = [iowcController, navControllerWithTitle( "\(second)", imageName: "Tvs")]
    }
    
    fileprivate func navControllerWithTitle(_ title: String, imageName: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: PageController())
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}

