//
//  ContentView.swift
//  SwiftUI-TabView
//
//  Created by Digvijay Gupta on 23/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RedView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            BlueView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            GreenView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
