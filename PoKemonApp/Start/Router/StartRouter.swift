//
//  StartRouter.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import Foundation

class StartRouter: StartRouterProtocol {
  
    
    var presenter: StartPresenterInputProtocol & StartPresenterOutputProtocol
    var view: StartViewController?
    
    init(){
        view = StartViewController()
        presenter = StartPresenter()
        view?.presenter = self.presenter
        presenter.view = self.view
        presenter.router = self
    }
    
 
    }
