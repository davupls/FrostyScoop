//
//  DetailView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/11/23.
//

import SwiftUI

struct DetailView: View {
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Vanilla Popsicle")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Libero justo laoreet sit amet cursus sit amet. Accumsan tortor posuere ac ut consequat. Lorem ipsum dolor sit amet. Tristique senectus et netus et malesuada fames ac turpis.")
         
            HStack{
                Text("$2.54")
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

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
