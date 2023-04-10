//
//  ContentView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var viewModel: IceCreamModel
    @State var selectedCategory: IceCream?
    
    var body: some View {
        VStack {
            
            //MARK: Category Buttons
            ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        ForEach(viewModel.IceCreamCategories) { iceCream in
                            Button(action: {
                                selectedCategory = iceCream
                            }) {
                                Text(iceCream.name)
                                    .font(.body)
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .background(.cyan)
                            
                        }
                    }
            }
            
            //MARK: Feature Cards
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(selectedCategory?.flavor ?? viewModel.IceCreamFlavors) { flavor in
                        VStack(spacing: 10) {
                            Text(flavor.name)
                                .font(.title)
                            Text("$\(flavor.cost, specifier: "%.2f")")
                                .font(.title2)
                        }
                     
                    }
                    .frame(width: 250, height: 300)
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(IceCreamModel())
    }
}
