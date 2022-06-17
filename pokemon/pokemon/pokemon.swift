//
//  pokemon.swift
//  pokemon
//
//  Created by Germán Santos Jaimes on 17/06/22.
//

import Foundation

struct Resultado:Codable{
    var count: Int
    var results: [Pokemon]
}


struct Pokemon: Codable{
    var name: String
    
}
