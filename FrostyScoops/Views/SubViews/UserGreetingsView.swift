//
//  UserGreetingsView.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/10/23.
//

import SwiftUI

struct UserGreetingsView: View {
    var body: some View {
        HStack {
            Text("Hi, Cody!")
                .font(.title)
            Spacer()
            Image("smilingboy")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(15)
        }
    }
}

struct UserGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        UserGreetingsView()
    }
}
