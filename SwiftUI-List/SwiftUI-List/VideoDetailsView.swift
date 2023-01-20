//
//  VideoDetailsView.swift
//  SwiftUI-List
//
//  Created by Digvijay Gupta on 20/01/23.
//

import SwiftUI

struct VideoDetailsView: View {
    
    var video : Video
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Label("\(video.uploadDate)",systemImage: "calendar.badge.clock")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            Link(destination: video.url, label: {
                StandardButton(title: "Watch Now")
            })

        }
    }
}

struct VideoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailsView(video: VideoList.topTen.first!)
    }
}

