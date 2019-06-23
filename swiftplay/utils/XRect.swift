//
//  XRect.swift
//  swiftplay
//
//  Created by xingyue on 2019/6/19.
//  Copyright © 2019 exterminal. All rights reserved.
//

import Foundation
import UIKit

class  XRect  {
    
    static func mainBounds() -> CGRect {
        return UIScreen.main.bounds
    }
    
    static func screenSize() -> CGRect {
        return XRect.mainBounds()
    }
    
    static func makeSize( w: inout CGFloat ,h:inout CGFloat) -> CGSize {
        let xsize = XRect.mainBounds().size
        if w < 0 {
            w = xsize.width + w
        }
        if h < 0 {
            h = xsize.height + h
        }
        return CGSize(width: w, height: h)
    }
    
    // 根据中心点往，上下左右四个方向偏移
    // position 可以定义基本的x,y 位置
    static func centerPoint(offset:CGPoint,position:CGPoint) -> CGPoint {
        let xsize = XRect.mainBounds()
        var start = CGPoint(x:0,y:0)
        
        //根据position 定义的位置设置单方向居中
        if position.x != 0 {
            if position.x < 0 {
                start.x = xsize.width
            }
            return  CGPoint(x:position.x + start.x  ,y:xsize.height/2 + offset.y)
        }
        if position.y != 0 {
            if position.x < 0 {
                start.y = xsize.height
            }
           return CGPoint(x:xsize.width/2 + offset.x ,y:position.y + start.y )
        }
        return CGPoint(x:xsize.width/2 + offset.x ,y:xsize.height/2 + offset.y)
    }
    
    // 设置居中的一个CGRect
    // size 大小
    // position 位置信息， x，y 为0 表示居中
    // offset 偏移信息
    static func centerFrame(size: CGPoint,position:CGPoint,offset:CGPoint) -> CGRect {
        let xsize = XRect.screenSize()
        var nsize = size
        var nposition = position
        
        if nsize.x <= 0 {
            nsize.x = xsize.width + nsize.x
        }
        if nsize.y <= 0 {
            nsize.y = xsize.height + nsize.y
        }
        
        if nposition.x < 0 {
            nposition.x = xsize.width + nposition.x
        }
        
        if nposition.y < 0 {
            nposition.y = xsize.height + nposition.y
        }
        
        if offset.x != 0 {
            nposition.x += offset.x
        }
        
        if offset.y != 0 {
            nposition.y += offset.y
        }
        
        var x = xsize.width / 2 - nsize.x / 2
        var y = xsize.height / 2 - nsize.y / 2
        if nposition.x != 0 {
            x = nposition.x
        }
        if nposition.y != 0 {
            y = nposition.y
        }
        
       
        return CGRect(x: x, y: y, width: nsize.x, height: nsize.y)
    }
    
    
    static func centerFrame(size: CGPoint) -> CGRect {
        return XRect.centerFrame(size: size, position: CGPoint(x: 0, y: 0))
    }
    
    
    static func centerFrame(size: CGPoint,position:CGPoint) -> CGRect {
      return XRect.centerFrame(size: size, position: position, offset: CGPoint(x: 0, y: 0))
    }
   
    
    static func centerFrame(size: CGPoint,offset:CGPoint) -> CGRect {
        return XRect.centerFrame(size: size, position: CGPoint(x: 0, y: 0), offset:offset)
    }
    
}
