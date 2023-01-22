//
//  ContentView.swift
//  SwiftUI-LoadingView
//
//  Created by Digvijay Gupta on 23/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            Text("Example Page")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            
            if isLoading {
                LoadingView()
            }
        }
        .onAppear{ startFakeNetworkCall() }
    }
    
    
    func startFakeNetworkCall() {
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoadingView : View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
                .opacity(0.9)
            ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .scaleEffect(3)
        }
    }
}
