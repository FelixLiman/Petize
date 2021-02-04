//
//  Margin.swift
//  Petize
//
//  Created by Felix Liman on 03/02/21.
//
import UIKit

public struct Margin {
    //Basic
    public static let s2: CGFloat = 2.0
    public static let s4: CGFloat = 4.0
    public static let s6: CGFloat = 6.0
    public static let s8: CGFloat = 8.0
    public static let s12:CGFloat = 12.0
    public static let s16:CGFloat = 16.0
    public static let s20:CGFloat = 20.0
    public static let s24:CGFloat = 24.0
    public static let s32:CGFloat = 32.0
    public static let s36:CGFloat = 36.0
    public static let s40:CGFloat = 40.0
    public static let s44:CGFloat = 44.0
    public static let s48:CGFloat = 48.0
    public static let s56:CGFloat = 56.0
    public static let s60:CGFloat = 60.0
    public static let s64:CGFloat = 64.0
    public static let s72:CGFloat = 72.0
    public static let s96:CGFloat = 96.0
    public static let s108:CGFloat = 108.0
    
    //Button
    public static let b30: CGFloat = 30.0
    public static let b35: CGFloat = 35.0
    public static let b40: CGFloat = 40.0
    public static let b45: CGFloat = 45.0
    public static let b50: CGFloat = 50.0
    
    //Icon
    public static let i10: CGFloat = 10.0
    public static let i15: CGFloat = 15.0
    public static let i20: CGFloat = 20.0
    public static let i25: CGFloat = 25.0
    public static let i30: CGFloat = 30.0
    public static let i35: CGFloat = 35.0
    
    //UIImageView
    public static let m50: CGFloat = 50.0
    public static let m60: CGFloat = 60.0
    public static let m70: CGFloat = 70.0
    public static let m80: CGFloat = 80.0
    
    //Font
    ///return a font size with value 14.00
    public static let main1: CGFloat = 14.00
    ///return a font size with value 11.20
    public static let main2: CGFloat = 0.8 * main1
    ///return a font size with value 8.96
    public static let main3: CGFloat = 0.64 * main1
    ///return a font size with value 42.72
    public static let heading1: CGFloat = 3.052 * main1
    ///return a font size with value 34.18
    public static let heading2: CGFloat = 2.441 * main1
    ///return a font size with value 27.34
    public static let heading3: CGFloat = 1.953 * main1
    ///return a font size with value 21.88
    public static let heading4: CGFloat = 1.563 * main1
    ///return a font size with value 17.50
    public static let heading5: CGFloat = 1.25 * main1
    
}

public func UI<Element>(_ iPhone: Element, _ iPad: Element? = nil) -> Element {
    if UIDevice.current.userInterfaceIdiom == .phone || iPad == nil {
        return iPhone
    }
    return iPad!
}
