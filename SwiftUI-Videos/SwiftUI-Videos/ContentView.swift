//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Digvijay Gupta on 19/01/23.
//

import SwiftUI

struct ContentView: View {
    
    var videos : [Video] = []
    
    var body: some View {
        
        NavigationView {
            List(videos) { video in
                HStack {
                    Image(video.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90)
                        .cornerRadius(8)
                    Spacer().frame(width: 16)
                    VStack(alignment: .leading) {
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        Spacer().frame(height: 5)
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                    }
                }
            }.navigationBarTitle("Digvijay's videos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videos: Videos.topTwelve)
    }
}
