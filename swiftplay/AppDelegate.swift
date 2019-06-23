//
//  AppDelegate.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/19.
//  Copyright © 2019 exterminal. All rights reserved.
//

import UIKit
import KYDrawerController


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: XRect.mainBounds())
        var rc = makeSimpleViewControoler()
        
        rc = makeKYDrawerController()
        
        window?.rootViewController = rc
        window?.makeKeyAndVisible()
        
        Thread.sleep(forTimeInterval: Const.SPFlashInterval)
        
        return true
    }
    
    func makeSimpleViewControoler() -> UIViewController {
        return ViewController()
    }
    
    func makeKYDrawerController() -> UIViewController {
        let mainViewController   = ViewController()
        let drawerViewController = DrawerViewController()
        let drawerController     = KYDrawerController(drawerDirection: .left, drawerWidth: 300)
        
        drawerController.mainViewController = UINavigationController(
            rootViewController: mainViewController
        )
        
        // 侧滑菜单控制器
        drawerController.drawerViewController = drawerViewController
        
        
        
        /* Customize
         drawerController.drawerDirection = .Right
         drawerController.drawerWidth     = 200
         */
        
        return drawerController
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



