//
//  MainTabBarController.swift
//  iChat
//
//  Created by Serhii Demianenko on 10.01.2021.
//  Copyright © 2021 Serhii Demianenko. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        
        viewControllers = [listViewController, peopleViewController]
    }
    
    
}

