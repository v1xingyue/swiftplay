//
//  BaseVc.swift
//  hiworld
//
//  Created by xingyue on 2019/6/19.
//  Copyright © 2019 exterminal. All rights reserved.
//

import Foundation
import UIKit
import KYDrawerController

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setSlideButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "More",
            style: UIBarButtonItem.Style.plain,
            target: self,
            action: #selector(didTapOpenButton)
        )
    }
    
    @objc func didTapOpenButton(_ sender: UIBarButtonItem) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }
}
