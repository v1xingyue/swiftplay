//
//  AppDelegate.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/19.
//  Copyright © 2019 exterminal. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: XRect.mainBounds())
        let rc = ViewController()
        window?.rootViewController = rc
        window?.makeKeyAndVisible()
        
        Thread.sleep(forTimeInterval: Const.SPFlashInterval)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
       
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
       
    }

    func applicationWillTerminate(_ application: UIApplication) {
       
    }


}

