//
//  HomeEntity.swift
//  PoKemonApp
//
//  Created by michaell medina on 12/08/23.
//

import Foundation

struct HomePokemonDTO: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [PokemonDetails]
}
struct PokemonDetails: Codable {
    let name: String
    let url: String
}
struct PokemonCellsDetails: Codable{
    var abilities: String?
    var base_experience: Int?
    var forms: String?
    var game_indices: String?
    var height: Int?
    var held_items: String?
    var id: Int?
    var is_default:String?
    var location_area_encounters: String?
    var moves: String?
    var name: String?
    var order: Int?
    var past_types: String?
    var species: String?
    var sprites: String?
    var stats: String?
    var types: String?
    var weight: Int?
}

