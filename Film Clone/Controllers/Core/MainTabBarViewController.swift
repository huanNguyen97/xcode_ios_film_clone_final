//
//  ViewController.swift
//  Film Clone
//
//  Created by BSP Macbook on 4/29/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        // Create 4 elements on the tab bar
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())
        // End creating
        
        // Edit icon for each navigation controller
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        // End editing
        
        // Set title for each navigation controller
        vc1.title = "Home"
        vc2.title = "Comming Soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
        // End setting
        
        // Set color purely for tabbar
        tabBar.tintColor = .label
        // End setting
        
        // Add 4 elements on the tab bar
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        // End adding
    }
}

