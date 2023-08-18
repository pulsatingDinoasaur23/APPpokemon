//
//  HomeCollectionViewCell.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var pokemonView: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with pokemon: PokemonCellsDetails) {
        pokemonName.text = pokemon.name
        
        if let imageURLString = pokemon.sprites, let imageURL = URL(string: imageURLString) {
            downloadImage(from: imageURL) { [weak self] image in
                DispatchQueue.main.async {
                    self?.pokemonView.image = image
                }
            }
        }
    }
        
        func downloadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error downloading image:", error)
                    completion(nil)
                    return
                }
                
                if let data = data, let image = UIImage(data: data) {
                    completion(image)
                } else {
                    completion(nil)
                }
            }.resume()
        }
}
