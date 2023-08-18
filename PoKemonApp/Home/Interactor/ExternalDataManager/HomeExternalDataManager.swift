//
//  HomeExternalDataManager.swift
//  PoKemonApp
//
//  Created by michaell medina on 14/08/23.
//

import Foundation

class HomeExternalDataManager: HomeExternalDataManagerInputProtocol {
  
    
  
    
    var remoteRequestHandler: HomeExternalDataManagerOutputProtocol?
    
    func fetchPokemonList() {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let pokemonList = try JSONDecoder().decode([HomePokemonDTO].self, from: data)
                    self.remoteRequestHandler?.onPokemonListRetrieved(pokemonList)
                } catch let error {
                    print(error)
                }
            }
        }
        task.resume()
    }
    
    func fetchPokemonDetails(_ url: String) {
        let url = URL(string: url)!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let pokemonDetails = try JSONDecoder().decode(PokemonDetails.self, from: data)
                    self.remoteRequestHandler?.onPokemonDetailsRetrieved(pokemonDetails)
                } catch let error {
                    print(error)
                }
            }
        }
        task.resume()
    }
    
    
 
    // Función para realizar la solicitud a la URL de la API
    func fetchPokemonEspecs(onPokemonDetailsRetrieved: @escaping (Result<Data, Error>) -> Void) {
        // URL de la API de Pokémon
        let urlString = "https://pokeapi.co/api/v2/pokemon/1/"
        
        // Crear una URL a partir de la cadena
        if let url = URL(string: urlString) {
            // Crear una tarea de URLSession
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                // Verificar si ocurrió un error
                if let error = error {
                    onPokemonDetailsRetrieved(.failure(error))
                    return
                }
                
                // Verificar si se recibieron datos
                if let data = data {
                    onPokemonDetailsRetrieved(.success(data))
                } else {
                    let emptyDataError = NSError(domain: "com.example", code: -1, userInfo: [NSLocalizedDescriptionKey: "No se recibieron datos"])
                    onPokemonDetailsRetrieved(.failure(emptyDataError))
                }
            }
            
            // Iniciar la tarea
            task.resume()
        } else {
            let invalidURLError = NSError(domain: "com.example", code: -2, userInfo: [NSLocalizedDescriptionKey: "URL inválida"])
            onPokemonDetailsRetrieved(.failure(invalidURLError))
        }
    }


}
