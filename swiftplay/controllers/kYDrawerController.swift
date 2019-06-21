//
//  kYDrawerController.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/21.
//  Copyright © 2019 exterminal. All rights reserved.
//

import Foundation
import KYDrawerController

class MainViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.snowColor()
        title = "- Swift Play -"
        self.setSlideButton()
    }
    
}

//侧滑菜单控制器
class DrawerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeButton = UIButton(frame: XRect.centerFrame(size: CGPoint(x: 120, y: 50), position: CGPoint(x:50,y:200)))
        
        homeButton.setTitle("Home", for: UIControl.State())
        homeButton.setTitleColor(UIColor.blue, for: UIControl.State())
        
        homeButton.addTarget(self,action: #selector(GoHome),
                          for: .touchUpInside
        )
        view.addSubview(homeButton)
        
        let tButton = UIButton(frame: XRect.centerFrame(size: CGPoint(x: 120, y: 50), position: CGPoint(x:50,y:300)))
        
        tButton.setTitle("Terminal", for: UIControl.State())
        tButton.setTitleColor(UIColor.blue, for: UIControl.State())
        
        tButton.addTarget(self,action: #selector(didOpenTerminal),
                              for: .touchUpInside
        )
        view.addSubview(tButton)
        
        // Do any additional setup after loading the view.
        let closeButton    = UIButton(frame: XRect.centerFrame(size: CGPoint(x: 120, y: 50), position: CGPoint(x:50,y:-120)))
        closeButton.setTitle("Close", for: UIControl.State())
        closeButton.addTarget(self,
                              action: #selector(didTapCloseButton),
                              for: .touchUpInside
        )
        //closeButton.sizeToFit()
        closeButton.setTitleColor(UIColor.blue, for: UIControl.State())
        view.addSubview(closeButton)
        view.backgroundColor = UIColor.white
    }
    
    @objc func didTapCloseButton(_ sender: UIButton) {
        if let drawerController = parent as? KYDrawerController {
            drawerController.setDrawerState(.closed, animated: true)
        }
    }
    
    @objc func didOpenTerminal(_ sender: UIButton) {
        if let drawerController = parent as? KYDrawerController {
            drawerController.setDrawerState(.closed, animated: true)
            if let nController = drawerController.mainViewController as? UINavigationController {
                nController.setViewControllers([TerminalController()], animated: true)
            }
            
        }
    }
    
    @objc func GoHome(_ sender: UIButton) {
        if let drawerController = parent as? KYDrawerController {
            drawerController.setDrawerState(.closed, animated: true)
            if let nController = drawerController.mainViewController as? UINavigationController {
                nController.setViewControllers([MainViewController()], animated: true)
            }
            
        }
    }
}
