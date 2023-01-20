//
//  ContentView.swift
//  BarChart-SwiftUI
//
//  Created by Digvijay Gupta on 20/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct chartData: Identifiable {
    var id  = UUID()
    var date : Date
    var viewsCount : Int
}



