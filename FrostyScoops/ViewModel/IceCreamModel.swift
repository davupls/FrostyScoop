//
//  IceCreamModel.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import Foundation

class IceCreamModel: ObservableObject {
    @Published var IceCreamCategories: [IceCream] = []
    @Published var IceCreamFlavors: [Flavor] = []
    
    init() {
        loadIceCreamData()
    }
    
    private func loadIceCreamData() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            print("Could find file, data.json.")
            return
        }
        
        //MARK: IceCream Decode
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([IceCream].self, from: data)
            
            IceCreamCategories = decodedData
            
            
        }
        catch
        {
            print("Error decoding ice cream data: \(error)")
        }
        
        
        
        //MARK: Flavors Decode
       do
       {
           let data = try Data(contentsOf: url)
           let IceCreamCategories = try JSONDecoder().decode([IceCream].self, from: data)
           
           // Extract all the flavors from all the ice cream categories
           let allFlavors = IceCreamCategories.flatMap { $0.flavor }
           
           
           IceCreamFlavors = allFlavors
           
           
       }
       catch {
           print("Error decoding flavors data: \(error)")
       }
    }
}
