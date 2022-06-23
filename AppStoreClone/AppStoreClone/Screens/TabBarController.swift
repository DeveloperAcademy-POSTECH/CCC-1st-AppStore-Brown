//
//  TabBarController.swift
//  AppStoreClone
//
//  Created by LeeJiSoo on 2022/06/03.
//

import UIKit

class TabBarController: UITabBarController {
    
    private lazy var todayViewController: UIViewController = {
        let viewController = UIViewController()
        
        return viewController
    }()
    
    private lazy var gamesViewController: UIViewController = {
        let viewController = UIViewController()
        
        return viewController
    }()
    
    private lazy var appsViewController: UIViewController = {
        let viewController = UIViewController()
        
        return viewController
    }()
    
    private lazy var arcadeViewController: UIViewController = {
        let viewController = UIViewController()
        
        return viewController
    }()
    
    private lazy var searchViewController: UIViewController = {
        let viewController = UIViewController()
        
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [todayViewController, gamesViewController, appsViewController, arcadeViewController, searchViewController]
    }


}

