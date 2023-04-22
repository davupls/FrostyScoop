//
//  CartView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/22/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var viewModel: IceCreamModel
    @State private var modelFlavor : Flavor? = nil
    
    var body: some View {
        VStack {
            HStack {
                Text("Shopping Cart")
                Spacer()
                Text("Total")
                Text("24")
            }
            
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(IceCreamModel())
    }
}

