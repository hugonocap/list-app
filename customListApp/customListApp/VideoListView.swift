//
//  VideoListView.swift
//  customListApp
//
//  Created by Hugo on 9.10.22.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video  in
                 NavigationLink(
                    destination: VideoDetailView(video: video ),  label: {
                       VideoCell(video: video)
                    })
            }
            // Title
            .navigationTitle("Top 10  POV Videos")
        }
    }
}

struct VideoCell: View {
    var video: Video
    var body: some View {
        HStack {
            // Image preview
            Image(video.imageName)
                .resizable()
                 .scaledToFit()
                .frame(height: 70.0)
                .cornerRadius(4.0)
                .padding(.vertical, 4.0)
            
            VStack(alignment: .leading, spacing: 5.0) {
                // Title
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                // Upload data
                Text(video.uploadData)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
