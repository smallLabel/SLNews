//
//  AppDelegate.swift
//  News
//
//  Created by jh on 2020/4/12.
//  Copyright © 2020 Fengmap. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = nil
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = SLBasicTabbarController()
        window?.makeKeyAndVisible()
        
        return true
    }



}

