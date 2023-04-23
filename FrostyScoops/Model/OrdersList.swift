//
//  OrdersList.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/22/23.
//

import Foundation

class OrdersList: Identifiable, ObservableObject {
    var id = UUID()
    var order : [UUID : [String]]? = [:]
    
}
