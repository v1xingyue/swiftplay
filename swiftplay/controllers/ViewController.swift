//
//  ViewController.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/19.
//  Copyright © 2019 exterminal. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Const.DefaultBackGroundColor
        title = "Swift PlayGround"
        self.view.addSubview(self.makeCenterUILabel(width: 0, height: 50, text: "Hello Swift Play", fontSize: 24))
        self.setSlideButton()
        
        
    }


}

