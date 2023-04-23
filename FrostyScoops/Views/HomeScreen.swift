//
//  ContentView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var viewModel: IceCreamModel
    @EnvironmentObject var orderModel: OrdersList
    @State var selectedCategory: IceCream?
    @State private var isShowingView : Flavor? = nil
    let gradient = Gradient(colors: [.yellow, .pink])
    
    
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
            .padding(.vertical)
            
            //MARK: Feature Cards
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHStack(spacing: 20) {
                    
                    ForEach(selectedCategory?.flavor ?? viewModel.IceCreamFlavors) { flavor in
                        
                        Button {
                            isShowingView = flavor
                        } label: {
                            VStack {
                                
                                Image("\(flavor.images)")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: 200)
                                
                                Text(flavor.name)
                                    .bold()
                                    .font(.title3)
                                Text("$\(flavor.cost, specifier: "%.2f")")
                                    .font(.title3)
                            }
                            .background(LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading))
                            .sheet(item: $isShowingView) { item in
                                DetailView(flavorName: item.name, description: item.description, cost: item.cost, flavorImage: item.images)
                            }
                        }

                    }
                    .foregroundColor(.black)
                    .cornerRadius(20)
                }
                .frame(maxHeight: 350)
            }
        }
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(IceCreamModel())
            .environmentObject(OrdersList())
    }
}
