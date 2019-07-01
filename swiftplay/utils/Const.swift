//
//  const.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/19.
//  Copyright © 2019 exterminal. All rights reserved.
//

import UIKit
import Foundation

class Const {
    
    static let SPFlashInterval =  2.0 // 3秒
    static let DefaultBackGroundColor = Color.snowColor()
    static let DefaultLabelColor = Color.charcoalColor()
    
    static let routerControllers = [
        ["name":"Home","controller":ViewController()],
        ["name":"Terminal","controller":TerminalController()],
        ["name":"Password Generate","controller":PwdGenerateController()],
        ["name":"Code HighLight","controller":HighLightViewController()],
        ["name":"About","controller":AboutViewController()]
        
    ]
    
}
