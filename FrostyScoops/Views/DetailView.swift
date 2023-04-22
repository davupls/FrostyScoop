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
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(flavorName)")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("\(description)")
         
            HStack{
                Text("$\(cost)")
                    .font(.title)
                    .bold()
                Spacer()
                Button("Add to Cart") {
                    print("Price of Ice Cream: 2.54")
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
        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
