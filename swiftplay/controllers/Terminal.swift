//
//  Terminal.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/21.
//  Copyright © 2019 exterminal. All rights reserved.
//

import Foundation
import UIKit

class TerminalController : BaseViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = Const.DefaultBackGroundColor
        self.setSlideButton()
        title = "- Terminal Controller -"
      
        let textView = UITextView(frame: XRect.centerFrame(size: CGPoint(x:-20,y:-120),position: CGPoint(x:0,y:0), offset: CGPoint(x:0,y:90)))
        textView.layer.borderWidth = 2
        textView.layer.borderColor = UIColor.coolGrayColor().cgColor
        textView.layer.backgroundColor = UIColor.midnightBlueColor().cgColor
        textView.textColor = UIColor.ghostWhiteColor()
        textView.text = "Hello Terminal"
        textView.font = UIFont.systemFont(ofSize: 16)
        view.addSubview(textView)
        
    }
    
    
}
