//
//  CGFloat+Extension.swift
//  Petize
//
//  Created by Felix Liman on 03/02/21.
//

import Foundation
import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
