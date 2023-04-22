//
//  ItemCartView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/22/23.
//

import SwiftUI

struct ItemCartView: View {
    var body: some View {
        HStack {
            
            Image(systemName: "pencil")
                .frame(minWidth: 90, minHeight: 90)
                .background(.blue)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text("Chocolate Gelato")
                    .font(.system(size: 15))
                Text("$13")
                    .bold()
            }
            .padding(.horizontal)
            
            HStack {
                ZStack{
                    Circle()
                        .frame(width: 20)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    Text("-")
                        .font(.body)
                }
                
                Text("2")
                    .padding(.horizontal, 5)
                
                ZStack{
                    Circle()
                        .frame(width: 20)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                    Text("+")
                }
                Image(systemName: "trash")
                    .foregroundColor(.gray)
                    .padding(.leading)
            }
        }
    }
}

struct ItemCartView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCartView()
    }
}
