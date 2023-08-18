//
//  StartProtocols.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//

import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de homeViperBR
protocol StartModuleViewProtocol {
    // PRESENTER -> VIEW
}
/// Protocolo que define los métodos y atributos para el routing de homeViperBR
protocol StartModuleRouterProtocol {
    // PRESENTER -> ROUTING
   func goToHomeModule()
  
}
/// Protocolo que define los métodos y atributos para el Presenter de homeViperBR
protocol StartModulePresenterProtocol {
//    var view: StartModuleViewProtocol? { get set }
//    var interactor: StartModuleInteractorInputProtocol? { get set }
//    var router: StartModuleRouterProtocol? { get set }
    // VIEW -> PRESENTER
    func viewDidLoad()
    func goToHome()
}
/// Protocolo que define los métodos y atributos para el Interactor de homeViperBR
protocol StartModuleInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
}
/// Protocolo que define los métodos y atributos para el Interactor de homeViperBR
protocol StartModuleInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
 
}
