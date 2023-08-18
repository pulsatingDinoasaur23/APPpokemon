//
//  StartModulePresenter.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//

import Foundation
import UIKit

class StartModulePresenter {
    
    var view: StartModuleViewProtocol?
    var interactor: StartModuleInteractorInputProtocol?
    var router: StartModuleRouterProtocol?
    
        
    func goToHome() {
        router?.goToHomeModule()
    }
}
extension StartModulePresenter: StartModulePresenterProtocol {
    func viewDidLoad() {
    }
    
  
}
extension StartModulePresenter: StartModuleInteractorOutputProtocol {
}



     
    



