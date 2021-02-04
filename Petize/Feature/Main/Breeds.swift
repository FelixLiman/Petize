//
//  Breeds.swift
//  Petize
//
//  Created by Felix Liman on 03/02/21.
//

import Foundation

struct BreedsMeasurement {
    let imperial: String
    let metric: String
}

struct BreedsImage {
    let id: String
    let url: String
    let height: Double
    let width: Double
}

struct Breeds {
    let id: String
    let bred_for: String
    let breed_group: String
    let height: BreedsMeasurement
    let weight: BreedsMeasurement
    let image: BreedsImage
    let life_span: String
    let name: String
    let origin: String
    let temperament: String
    
//    init(_ json: JSON) {
//        
//    }
}
