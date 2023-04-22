//
//  IceCream.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import Foundation

struct IceCream: Codable, Identifiable {
    var id: Int
    var name, image: String
    var flavor: [Flavor]
}

struct Flavor: Codable, Identifiable {
    var id: Int
    var name, images: String
    var description: String
    var cost: Float
}
