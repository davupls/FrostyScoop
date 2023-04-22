//
//  RootTabView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/10/23.
//

import SwiftUI

struct RootTabView: View {
//    @Environment var viewModel: IceCreamModel
    
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
            }
//            Text("Detail")
//                .tabItem {
//                    Label("Detail", systemImage: "book")
//                }
            Text("Cart")
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
            Text("Person")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(IceCreamModel())
    }
}
