//
//  HomePresenter.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import Foundation

class HomePresenter: HomePresenterInputProtocol, HomePresenterOutputProtocol {
    var view: HomeViewProtocol?
    var interactor: HomeInteractorProtocol?
    var router: HomeRouterProtocol?

    func viewDidLoad() {
        
        loadPokemonData()
    }
    func loadPokemonData(){
        interactor?.fetchPokemonList()
    }

    func searchButtonTapped(with searchText: String) {
        // Inicia la búsqueda
    }

    // Implementa los métodos de salida si es necesario
}
