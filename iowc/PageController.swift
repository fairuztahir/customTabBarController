//
//  2ndPageController.swift
//  iowc
//
//  Created by Fairuz Tahir on 09/03/2018.
//  Copyright © 2018 iopenwise. All rights reserved.
//

import UIKit

class PageController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.brown
        self.view.anchorToTop(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
    }
    
    
}
