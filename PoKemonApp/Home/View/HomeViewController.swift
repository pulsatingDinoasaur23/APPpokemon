//
//  HomeViewController.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import UIKit

class HomeViewController: BaseViewController, HomeViewProtocol {
    func showError(message: String) {
    
    }
    
    @IBOutlet weak var pokemonSearchBar: UISearchBar!
    @IBOutlet weak var pokemonCollection: UICollectionView!
    
    var presenter: HomePresenterInputProtocol?
    var pokemons: [PokemonCellsDetails] = []
    var cell: HomeCollectionViewCell?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        presenter?.viewDidLoad()
        
        pokemonCollection.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PokemonCell")
    }
    
    func setupCollectionView() {
        pokemonCollection.dataSource = self
        pokemonCollection.delegate = self
        pokemonCollection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "PokemonCell")
    }
    
    // Implementa los métodos de la vista según tus necesidades
    // Por ejemplo, la función showError(message: String)
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCell", for: indexPath) as? HomeCollectionViewCell else {
            fatalError("No se pudo obtener una instancia de HomeCollectionViewCell")
        }
        
        // Configura la celda con los datos del pokémon en el índice actual
        let pokemon = pokemons[indexPath.item] // Accede al array "pokemons"
        cell.configure(with: pokemon) // Llamada al método de configuración en HomeCollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Lógica para manejar la selección de una celda
    }
}
