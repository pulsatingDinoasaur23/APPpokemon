//
//  HomeModulePresenter.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//


import Foundation

class HomeModulePresenter {
    
    var view: HomeModuleViewProtocol?
    var interactor: HomeModuleInteractorInputProtocol?
    var router: HomeModuleRouterProtocol?
    
}
extension HomeModulePresenter: HomeModulePresenterProtocol {
    
    func viewDidLoad(){
    }
}
extension HomeModulePresenter: HomeModuleInteractorOutputProtocol {
}
