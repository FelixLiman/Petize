//
//  UIColor+Extension.swift
//  Petize
//
//  Created by Felix Liman on 03/02/21.
//

import Foundation
import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
