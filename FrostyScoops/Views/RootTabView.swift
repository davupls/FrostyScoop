//
//  RootTabView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/10/23.
//

import SwiftUI

struct RootTabView: View {
    
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
            }
            CartView()
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
            .environmentObject(OrdersList())
    }
}
