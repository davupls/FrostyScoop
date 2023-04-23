//
//  FrostyScoopsApp.swift
//  FrostyScoops
//
//  Created by David Mclean on 4/9/23.
//

import SwiftUI

@main
struct FrostyScoopsApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(IceCreamModel())
                .environmentObject(OrdersList())
            
        }
    }
}
