//
//  HomeModuleInteractor.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//


import Foundation

class HomeModuleInteractor {
    var presenter: HomeModuleInteractorOutputProtocol?
    
}
extension HomeModuleInteractor: HomeModuleInteractorInputProtocol {
}
