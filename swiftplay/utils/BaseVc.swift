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
        view.backgroundColor = Const.DefaultBackGroundColor
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
    
    func makeCenterUILabel( width:CGFloat , height:CGFloat, text:String ,fontSize:CGFloat) -> UILabel {
        let clabel = UILabel(frame: XRect.centerFrame(size: CGPoint(x:width,y:height), position: CGPoint(x:0,y:0)))
        clabel.text = text
        clabel.textColor = Const.DefaultLabelColor
        clabel.textAlignment = NSTextAlignment.center
        clabel.font = UIFont.systemFont(ofSize: fontSize)
        return clabel
    }
    
    func makeCenterUIButton( width:CGFloat , height:CGFloat, text:String ,fontSize:CGFloat) -> UIButton {
        let cbutton = UIButton(frame: XRect.centerFrame(size: CGPoint(x:width,y:height), position: CGPoint(x:0,y:0)))
        
        cbutton.setTitle(text, for: UIControl.State.normal)
        cbutton.titleLabel?.font = UIFont.systemFont(ofSize:fontSize)
        cbutton.layer.backgroundColor = UIColor.grapeColor().cgColor
        cbutton.layer.cornerRadius = 10
        return cbutton
    }
}
