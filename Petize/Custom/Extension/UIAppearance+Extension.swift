//
//  UIAppearance+Extension.swift
//  Petize
//
//  Created by Felix Liman on 03/02/21.
//

import UIKit

extension UIAppearance {
    
    @discardableResult
    public func style(_ styleClosure: (Self) -> Void) -> Self {
        styleClosure(self)
        return self
    }
}
