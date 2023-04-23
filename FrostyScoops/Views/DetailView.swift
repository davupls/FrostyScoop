//
//  DetailView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/11/23.
//

import SwiftUI

struct DetailView: View {
    
    var flavorName: String
    var description: String
    var cost: Float
    var flavorImage: String
    
    @EnvironmentObject var orderModel: OrdersList
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(flavorName)")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("\(description)")
         
            HStack{
                Text("$\(cost, specifier: "%.2f")")
                    .font(.title)
                    .bold()
                Spacer()
                Button("Add to Cart") {
                    let idGen = UUID()
                    orderModel.order![idGen] = [flavorName, flavorImage, String(cost)]
                    print(orderModel.order!)
                    
                }
                    .foregroundColor(.white)
                    .bold()
                    .padding(.vertical, 15)
                    .padding(.horizontal, 40)
                    .background(Color("buttonHighlight"))
                    .cornerRadius(30)
                
            }
            .padding(.top)
            
        }
        .padding()
        
    }
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(flavorName: "Gelato", description: "Italian Ice Crea, that's made with whole milk, rather than cream. This difference enhances the flavors and puts a smile on your face.", cost: 4.56, flavorImage: "chocolate soft")
            .environmentObject(OrdersList())
    }
}
