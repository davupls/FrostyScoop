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
                .padding()
            SearchBarView()
            
            //MARK: Category Buttons
            ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        ForEach(viewModel.IceCreamCategories) { iceCream in
                            Button(action: {
                                selectedCategory = iceCream
                            }) {
                                VStack(spacing: 10) {
                                    
                                    Image(systemName: "scribble")
                                        .foregroundColor(.black)
                                        .font(.title)
                                    
                                    Text(iceCream.name)
                                        .bold()
                                        .font(.body)
                                        .foregroundColor(.black)
                                        
                                    
                                }
                                
                            }
                            .padding()
                            .background(.cyan)
                            
                        }
                    }
            }
            
            //MARK: Feature Cards
            ScrollView(.horizontal, showsIndicators: false) {
                
                
                LazyHStack(spacing: 20) {
                        
                        ForEach(selectedCategory?.flavor ?? viewModel.IceCreamFlavors) { flavor in
                            
                            VStack(spacing: 20) {
                                
                                Image(systemName: "lasso.and.sparkles")
                                    .font(.system(size: 80))
                                Text(flavor.name)
                                    .font(.title)
                                Text("$\(flavor.cost, specifier: "%.2f")")
                                    .font(.title2)
                                
                            }
                         
                        }
                        .frame(width: 250, height: 400)
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        
                    }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(IceCreamModel())
    }
}
