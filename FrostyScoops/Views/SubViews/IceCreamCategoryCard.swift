//
//  IceCreamCategoryCard.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import SwiftUI

struct IceCreamCategoryCard: View {
    let category: IceCream
    
    var body: some View {
        
        HStack {
            Text(category.name)
                .foregroundColor(.white)
                .font(.headline)
                .padding()
        }
        .frame(minWidth: 150, minHeight: 150)
        .background(Color(.blue))
        .cornerRadius(8)
    }
}

//struct IceCreamCategoryCard_Previews: PreviewProvider {
//    static var previews: some View {
//
//        IceCreamCategoryCard(category: "Gelato")
//            .environmentObject(IceCreamModel())
//    }
//}
