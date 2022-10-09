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
                HStack {
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70.0)
                        .cornerRadius(4.0)
                        .padding(.vertical, 4.0 )
                    
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                        Text(video.uploadData)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Hugo's Top 10")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
