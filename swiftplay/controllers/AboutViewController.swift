//
//  kYDrawerController.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/21.
//  Copyright © 2019 exterminal. All rights reserved.
//

import Foundation
import UIKit

class AboutViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.snowColor()
        title = "- Swift Play About -"
        self.setSlideButton()
        
         self.view.addSubview(self.makeCenterUILabel(width: 0, height: 50, text: "About Page", fontSize: 24))
    }
    
}
