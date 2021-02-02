//
//  AppDelegate.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        let navigationController = UINavigationController()
        let mainVC = MainViewController()
        navigationController.viewControllers = [mainVC]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        return true
    }
}

