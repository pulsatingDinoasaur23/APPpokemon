//
//  HomeModuleRouter.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//

import Foundation
import UIKit

class HomeModuleRouter: HomeModuleRouterProtocol {
    
    var view: HomeModuleVC?
    var presenter: HomeModulePresenter?
    var interactor: HomeModuleInteractor?
  
    init() {
        self.view = HomeModuleVC()
        self.presenter = HomeModulePresenter()
        self.interactor = HomeModuleInteractor()
        view?.presenter = self.presenter
        presenter?.view = self.view
        presenter?.interactor = self.interactor
        presenter?.router = self
        interactor?.presenter = self.presenter
    
    }

}
