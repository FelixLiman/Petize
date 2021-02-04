//
//  MainPresenter.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import Foundation

final class MainPresenter: MainPresenterDelegate {
    weak var view: MainViewControllerDelegate?
    lazy var router: MainRouterDelegate? = MainRouter(view: view)
    lazy var interactor: MainInteractorInputDelegate = MainInteractor()
    
    init(view: MainViewControllerDelegate) {
        self.view = view
    }
    
    func getBreeds() {
        interactor.getBreeds()
    }
    
    func pushToDetails() {
        router?.pushToDetails()
    }
}
