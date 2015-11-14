//
//  UIColorExtensions.swift
//  EZSwiftExtensions
//
//  Created by Goktug Yilmaz on 15/07/15.
//  Copyright (c) 2015 Goktug Yilmaz. All rights reserved.
//
import UIKit

extension UIColor {
    
    /// EZSwiftExtensions
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
    }
    
    /// EZSwiftExtensions
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
 
    /// EZSwiftExtensions
    class func Gray(gray: CGFloat) -> UIColor {
        return UIColor(r: gray, g: gray, b: gray)
    }
    
    /// EZSwiftExtensions
    class func Gray(gray: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(r: gray, g: gray, b: gray, a: alpha)
    }
    
    /// EZSwiftExtensions
    var red: Int {
        var r: CGFloat = 0
        getRed(&r, green: nil, blue: nil, alpha: nil)
        return Int(r * 255)
    }

    /// EZSwiftExtensions
    var green: Int {
        var g: CGFloat = 0
        getRed(nil, green: &g, blue: nil, alpha: nil)
        return Int(g * 255)
    }
    
    /// EZSwiftExtensions
    var blue: Int {
        var b: CGFloat = 0
        getRed(nil, green: nil, blue: &b, alpha: nil)
        return Int(b * 255)
    }
    
    /// EZSwiftExtensions
    var alpha: Int {
        var a: CGFloat = 0
        getRed(nil, green: nil, blue: nil, alpha: &a)
        return Int(a)
    }
   
}
