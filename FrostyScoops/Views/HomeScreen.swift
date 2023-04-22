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
            UserGreetingsView()
                .padding(.horizontal)
            SearchBarView()
                .padding(0)
            
            
            //MARK: Category Buttons
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 20) {
                    ForEach(viewModel.IceCreamCategories) { iceCream in
                        Button(action: {
                            selectedCategory = iceCream
                        }) {
                            VStack {
                                
                                VStack {
                                    Image("\(iceCream.image)")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 80, height: 80)
                                }
                                .clipShape(Circle())
                                
                                Text(iceCream.name)
                                    .font(.system(size: 15))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                
            }
            .padding(.top)
            
            //MARK: Feature Cards
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHStack(spacing: 20) {
                    
                    ForEach(selectedCategory?.flavor ?? viewModel.IceCreamFlavors) { flavor in
                        
                        VStack {
                            
                            Image("\(flavor.images)")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 200, maxHeight: 300)
                            
                            Text(flavor.name)
                                .bold()
                                .font(.title3)
                            Text("$\(flavor.cost, specifier: "%.2f")")
                                .font(.title3)
                        }
                    }
                    .foregroundColor(.black)
                    .cornerRadius(20)
                }
            }
        }
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(IceCreamModel())
    }
}
