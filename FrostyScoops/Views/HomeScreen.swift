//
//  ContentView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject var viewModel = IceCreamModel()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(viewModel.IceCreamCategories) { category in
                    
                    IceCreamCategoryCard(category: category)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(IceCreamModel())
    }
}
