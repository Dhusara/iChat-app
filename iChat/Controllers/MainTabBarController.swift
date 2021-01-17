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
        
        tabBar.tintColor = #colorLiteral(red: 0.6274509804, green: 0.2156862745, blue: 0.968627451, alpha: 1)
        let boldConfiguration = UIImage.SymbolConfiguration(weight: .medium)
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: boldConfiguration)!
        let conversationImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfiguration)!
        
        viewControllers = [generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage), generateNavigationController(rootViewController: listViewController, title: "Conversations", image: conversationImage)]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        
        return navigationVC
    }
    
}

