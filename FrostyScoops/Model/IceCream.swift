//
//  IceCream.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import Foundation

struct IceCream: Codable, Identifiable {
    let id = UUID()
    var name, image: String
    var flavor: [Flavor]
    var description: String
}

// MARK: - Flavor
struct Flavor: Codable, Identifiable {
    let id = UUID()
    var name: String
    var images: String?
    var cost: Double
    var image: String?
}
