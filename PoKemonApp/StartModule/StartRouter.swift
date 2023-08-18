//
//  StartRouter.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//

import Foundation
import UIKit

class StartModuleRouter {
    
    var view: StartModuleVC?
    var presenter: StartModulePresenter?
    var router: StartModuleRouterProtocol?
    var interactor: StartModuleInteractor?
    
    
    
    init() {
        self.view = StartModuleVC()
        self.presenter = StartModulePresenter()
        self.interactor = StartModuleInteractor()
        view?.presenter = self.presenter
        presenter?.view = self.view
        presenter?.interactor = self.interactor
        presenter?.router = self
        interactor?.presenter = self.presenter
        
        
        
    }
    
    func goToHomeModule() {
        if let nextView = HomeModuleRouter().view {
            view?.navigationController?.pushViewController(nextView, animated: true)
        }
    }
}
extension StartModuleRouter: StartModuleRouterProtocol {
    
}
