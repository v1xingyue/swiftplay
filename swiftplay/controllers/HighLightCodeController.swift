
//
//  File.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/30.
//  Copyright © 2019 exterminal. All rights reserved.
//

import Foundation
import UIKit
import Highlightr

class HighLightViewController : BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setSlideButton()
        title = "High Light Code"
        
        //创建 CodeAttributedString
        let textStorage = CodeAttributedString()
        textStorage.language = "python"
        textStorage.highlightr.setTheme(to: "atelier-lakeside-light")
        textStorage.highlightr.theme.codeFont = UIFont(name: "Courier", size: 19)
        
        
        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
        
        let textContainer = NSTextContainer(size: view.bounds.size)
        layoutManager.addTextContainer(textContainer)
        
        //创建一个textView用于显示代码
        let textView = UITextView(frame: self.view.frame, textContainer: textContainer)
        
        textView.autocorrectionType = .no
        textView.autocapitalizationType = .none
        textView.smartDashesType = .no
        textView.smartQuotesType = .no
        
        self.view.addSubview(textView)
        
        //根据主题同步改变UI配色
        textView.backgroundColor = textStorage.highlightr.theme.themeBackgroundColor
        if let navBar = self.navigationController?.navigationBar {
            navBar.barTintColor = textStorage.highlightr.theme.themeBackgroundColor
            navBar.tintColor = invertColor(navBar.barTintColor!)
            navBar.titleTextAttributes = [.foregroundColor: navBar.tintColor ?? UIColor.infoBlueColor]
        }
        
        textView.becomeFirstResponder()
        
        let highlightr = Highlightr()!
        let code = "a = 3\nb = 4\nprint(a+b)\n"
        let highlightedCode = highlightr.highlight(code)
        textView.attributedText = highlightedCode
        
    }
    
    //获取反色
    func invertColor(_ color: UIColor) -> UIColor {
        var r:CGFloat = 0, g:CGFloat = 0, b:CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        return UIColor(red:1.0-r, green: 1.0-g, blue: 1.0-b, alpha: 1)
    }
    
}
