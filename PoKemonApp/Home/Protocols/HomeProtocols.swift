//
//  HomeProtocols.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import Foundation

protocol HomeViewProtocol: AnyObject {
    var presenter: HomePresenterInputProtocol? { get set }
    
    // Métodos de la vista para actualizar la lista y manejar eventos
//    func updateWichPokemon(_ models: [Pokemon])
    func showError(message: String)
}

protocol HomeInteractorProtocol: AnyObject {
    var presenter: HomePresenterOutputProtocol? { get set }
    
    // Método para solicitar modelos de productos
    func fetchWichPokemon(for searchText: String)
}
protocol HomePresenterInputProtocol: AnyObject {
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorProtocol? { get set }
    var router: HomeRouterProtocol? { get set }
    
    // Método para responder a la carga inicial de la vista
    func viewDidLoad()
    
    // Método para responder a la búsqueda
    func searchButtonTapped(with searchText: String)
}

protocol HomePresenterOutputProtocol: AnyObject {
    // Puedes agregar aquí más métodos de salida si es necesario
}
protocol HomeRouterProtocol: AnyObject {
    var view: HomeViewController? { get set }
    
    // Puedes agregar métodos de navegación si es necesario
}
