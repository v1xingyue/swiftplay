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
        
        let clabel = UILabel(frame: XRect.centerFrame(size: CGPoint(x:0,y:50), position: CGPoint(x:0,y:0)))
        clabel.text = "Hello This Is Swift World"
        clabel.textColor = Const.DefaultLabelColor
        clabel.textAlignment = NSTextAlignment.center
        clabel.font = UIFont.systemFont(ofSize: 26)
        
        
        self.view.addSubview(clabel)
    }


}

