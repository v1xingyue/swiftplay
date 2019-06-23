//
//  DrawerViewController.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/22.
//  Copyright © 2019 exterminal. All rights reserved.
//

import Foundation
import KYDrawerController

//侧滑菜单控制器
class DrawerViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var menus = ["Home","Terminal","About"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "menu")
        cell.textLabel?.text = menus[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = menus[indexPath.row]
        var nextController : UIViewController
        switch item {
        case "Terminal":
            nextController = TerminalController()
        case "About":
            nextController = AboutViewController()
        default:
            nextController = ViewController()
        }
        
        if let drawerController = parent as? KYDrawerController {
            drawerController.setDrawerState(.closed, animated: true)
            if let nController = drawerController.mainViewController as? UINavigationController {
                    nController.setViewControllers([nextController], animated: true)
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myTableView = UITableView(frame:XRect.centerFrame(size: CGPoint(x: 240, y: -150), position: CGPoint(x:10,y:0)),style: .plain)
        myTableView.separatorStyle = .singleLine
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.allowsSelection = true

        view.addSubview(myTableView)
 
        // Do any additional setup after loading the view.
        let closeButton    = UIButton(frame: XRect.centerFrame(size: CGPoint(x: 120, y: 50), position: CGPoint(x:0,y:-90), offset: CGPoint(x: 180, y: 0)))
        closeButton.setTitle("Close", for: UIControl.State())
        closeButton.addTarget(self, action: #selector(didTapCloseButton),for: .touchUpInside)
        closeButton.setTitleColor(UIColor.blue, for: UIControl.State())
        view.addSubview(closeButton)
        view.backgroundColor = UIColor.white
    }
    
    @objc func didTapCloseButton(_ sender: UIButton) {
        if let drawerController = parent as? KYDrawerController {
            drawerController.setDrawerState(.closed, animated: true)
        }
    }
 
}
