//
//  ViewController.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/19.
//  Copyright © 2019 exterminal. All rights reserved.
//

import UIKit
import SCLAlertView

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Const.DefaultBackGroundColor
        title = "Swift PlayGround"
        self.setSlideButton()
        
        let button = self.makeCenterUIButton(width: 300, height: 50, text: "Hello Click Me", fontSize: 18)
        
        button.layer.position.y += 200
        
        button.addTarget(self, action: #selector(clickHelloWorld), for: UIControl.Event.touchUpInside)
        
        view.addSubview(button)
        
    }

    @objc func clickHelloWorld( sender:UIButton){
        SCLAlertView().showInfo("Hello Swift Play", subTitle: "Hello Long Time No See . \nHow Are You ?")
    }

}

