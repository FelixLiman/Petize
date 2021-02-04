//
//  MainRouter.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import Foundation
import UIKit

final class MainRouter: MainRouterDelegate {
    weak var source: UIViewController?
    
    init(view: MainViewControllerDelegate?) {
        source = view as? UIViewController
    }
    
    func pushToDetails() {
        
    }
}
