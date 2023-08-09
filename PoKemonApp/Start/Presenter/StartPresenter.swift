//
//  StartPresenter.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import Foundation

class StartPresenter {
    weak var view: StartViewProtocol?
    var router: StartRouterProtocol?
    var interactor: StartInteractorProtocol?
    
    }
extension StartPresenter: StartPresenterInputProtocol {

    
    func viewDidLoad() {
    }
    
    func ButtonTapped() {
       
    }
}
extension StartPresenter: StartPresenterOutputProtocol {
        
    }
