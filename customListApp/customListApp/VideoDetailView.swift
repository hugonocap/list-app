//
//  VideoDetailView.swift
//  customListApp
//
//  Created by Hugo on 9.10.22.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    var body: some View {
        VStack() {
            Spacer()
            // Preview image
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            // Title
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40.0) {
                // Views icon
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                // Views
                Text(video.uploadData)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            // Description
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            // button
            Link(destination: video.url, label: {
                StandardButton(title: "Watch now!")
            })
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct StandardButton: View {
    
    var title: String
    
    var body: some View {
        Text("Watch now!")
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
