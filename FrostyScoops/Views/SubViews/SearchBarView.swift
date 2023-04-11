//
//  SearchBarView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/10/23.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("")
            }
        }
        .searchable(text: $searchText, prompt: "Search For IceCream")
        
        .frame(height: 90)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
