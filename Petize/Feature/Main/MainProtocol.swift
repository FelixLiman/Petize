//
//  MainProtocol.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import Foundation

protocol MainViewControllerDelegate: AnyObject {
    
}

internal protocol MainPresenterDelegate: AnyObject {
    func getBreeds()
    func pushToDetails()
}

protocol MainRouterDelegate: AnyObject {
    func pushToDetails()
}

protocol MainInteractorInputDelegate: AnyObject {
    func getBreeds()
}

protocol MainInteractorOutputDelegate: AnyObject {
    
}
