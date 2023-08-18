//
//  HomeModuleProtocols.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//

import Foundation
import Foundation
import UIKit
/// Protocolo que define los métodos y atributos para el view de homeViperBR
protocol HomeModuleViewProtocol {
    // PRESENTER -> VIEW
}
/// Protocolo que define los métodos y atributos para el routing de homeViperBR
protocol HomeModuleRouterProtocol {
    // PRESENTER -> ROUTING
}
/// Protocolo que define los métodos y atributos para el Presenter de homeViperBR
protocol HomeModulePresenterProtocol {
    // VIEW -> PRESENTER
    func viewDidLoad()
}
/// Protocolo que define los métodos y atributos para el Interactor de homeViperBR
protocol HomeModuleInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
}
/// Protocolo que define los métodos y atributos para el Interactor de homeViperBR
protocol HomeModuleInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
}
