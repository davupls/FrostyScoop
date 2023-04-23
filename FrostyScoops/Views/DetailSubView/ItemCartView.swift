//
//  ItemCartView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/22/23.
//

import SwiftUI

struct ItemCartView: View {
    @EnvironmentObject var orderModel: OrdersList
    
    
    var body: some View {
        VStack {
            
            ForEach(Array(orderModel.order!), id: \.key) { order in
                Text("\(order.value[0])")
            }
            
        }
        
    }
}

struct ItemCartView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCartView()
            .environmentObject(OrdersList())
    }
}
