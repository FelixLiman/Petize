//
//  UIView+Extension.swift
//  Petize
//
//  Created by Felix Liman on 03/02/21.
//

import UIKit

extension UIView {
    func setupSubviews(views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
    
    func setLayer(cornerRadius: CGFloat? = nil, borderWidth width: CGFloat? = nil, borderColor color: UIColor? = nil, clipToBounds: Bool = true) {
        setNeedsLayout()
        layoutIfNeeded()
        if let radius = cornerRadius {
            let size = (frame.width == 0 ? frame.height : frame.width) / 2
            layer.cornerRadius = (radius == 0 ? size : radius)
//            layer.shadowRadius = (radius == 0 ? size : radius)
        } else {
            layer.cornerRadius = 0
//            layer.shadowRadius = 0
        }
        
        if let width = width {
            layer.borderWidth = width
        }
        if let color = color {
            layer.borderColor = color.cgColor
//            layer.backgroundColor = color.cgColor
//            layer.shadowColor = color.cgColor
        } else {
//            layer.backgroundColor = UIColor.black.cgColor
//            layer.shadowColor = UIColor.black.cgColor
        }
        layer.masksToBounds = clipToBounds
        
//        layer.shadowOffset = CGSize(width: frame.width, height: 1)
//        layer.shadowOpacity = 1
//        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
//        layer.shouldRasterize = true
//        layer.rasterizationScale = UIScreen.main.scale
    }
}
