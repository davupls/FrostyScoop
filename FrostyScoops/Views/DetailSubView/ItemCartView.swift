//
//  ItemCartView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/22/23.
//

import SwiftUI

struct ItemCartView: View {
    var flavorImage: String
    var flavorName: String
    var cost: Float
    
    
    var body: some View {
        HStack {
            
            Image(flavorImage)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 90, maxHeight: 90)
//                .background(.blue)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text(flavorName)
                    .font(.system(size: 15))
                Text("\(cost, specifier: "%.2f")")
                    .bold()
            }
            .padding(.horizontal)
            
            HStack {
                Button {
                    
                } label: {
                    ZStack{
                        Circle()
                            .frame(width: 20)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                        Text("-")
                            .font(.body)
                    }
                }

                
                Text("2")
                    .padding(.horizontal, 5)
                
                Button {
                    
                } label: {
                    ZStack{
                        Circle()
                            .frame(width: 20)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                        Text("+")
                    }
                }

                Button {
                    
                } label: {
                    Image(systemName: "trash")
                        .foregroundColor(.gray)
                        
                }
                .padding(.leading)

            }
        }
    }
}

struct ItemCartView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCartView(flavorImage: "chocolate soft", flavorName: "Chocolate Gelato", cost: 2.34)
    }
}
