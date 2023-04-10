//
//  IceCreamModel.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import Foundation

class IceCreamModel: ObservableObject {
    @Published var IceCreamCategories: [IceCream] = []
    
    init() {
        loadIceCreamData()
    }
    
    private func loadIceCreamData() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            print("Could find file, data.json.")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([IceCream].self, from: data)
            IceCreamCategories = decodedData
        }
        catch
        {
            print("Error decoding ice cream data: \(error)")
        }
    }
}
