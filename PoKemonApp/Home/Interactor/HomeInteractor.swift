//
//  HomeInteractor.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import Foundation


class HomeInteractor: HomeInteractorInputProtocol {
    
    var presenter: HomeInteractorOutputProtocol?
    var externalDataManager: HomeExternalDataManagerInputProtocol?
    
    func fetchPokemonList() {
        externalDataManager?.fetchPokemonList()
        externalDataManager?.fetchPokemonEspecs { [weak self] result in
                switch result {
                case .success(let data):
                   print("\(data)")
                case .failure(let error):
                    print("\(error)VALIO CHETOOOOOOO!!!")
                }
            }
    }
    
}

extension HomeInteractor: HomeExternalDataManagerOutputProtocol {
    
    func onPokemonListRetrieved(_ pokemonList: [HomePokemonDTO]) {
    }
    
    func onPokemonDetailsRetrieved(_ pokemonDetails: PokemonDetails) {
    }
    
    // Implementar otros métodos del protocolo según sea necesario
    
}

