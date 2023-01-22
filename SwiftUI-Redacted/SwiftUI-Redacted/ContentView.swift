//
//  ContentView.swift
//  SwiftUI-Redacted
//
//  Created by Digvijay Gupta on 23/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLoading = true
    
    var body: some View {
        VStack(spacing: 20) {
            Image("daddy")
                .resizable()
                .frame(width: 150,height: 150)
                .clipShape(Circle())
            
            Text("Janardan Gupta")
                .bold()
                .font(.title)
            
            VStack(alignment: .leading,spacing: 12) {
                HStack {
                    Image(systemName: "envelope")
                        .unredacted()
                    Text("Janardangupta377@gmail.com")
                       
                }
                HStack {
                    Image(systemName: "phone")
                        .unredacted()
                    Text("+91 7523878141")
                }
                HStack {
                    Image(systemName: "globe")
                        .unredacted()
                    Text("India")
                }
            }
            
            Spacer().frame(height: 50)
            
            Button {
                print("Tapped!!")
            } label: {
                 Text("Save")
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                    .bold()
                    .font(.title2)
            }
            .disabled(isLoading)
        }
        .onAppear{ startNetworkCall() }
        .redacted(reason: isLoading ? .placeholder : [])
        .padding()
    }
    
    func startNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
