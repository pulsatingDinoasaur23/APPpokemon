//
//  StartProtocols.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import Foundation


protocol StartViewProtocol: AnyObject {
    var presenter: StartPresenterInputProtocol? { get set }
}

protocol StartInteractorProtocol: AnyObject {
    var presenter: StartPresenterOutputProtocol? { get set }
}

protocol StartPresenterInputProtocol: AnyObject {
    var view: StartViewProtocol? { get set }
    var router: StartRouterProtocol? { get set }
    func viewDidLoad()
}
protocol StartPresenterOutputProtocol {
    
}

protocol StartRouterProtocol: AnyObject {
    var view: StartViewController? { get set }
    var presenter: StartPresenterInputProtocol & StartPresenterOutputProtocol { get set }
}
