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
            ListImagePreviewView(imageName: video.imageName)
            
            VStack(alignment: .leading, spacing: 5.0) {
                // Title
                ListTitleView(title: video.title)
                // Upload data
                ListUploadDataView(uploadData: video.uploadData)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
// image preview struct
struct ListImagePreviewView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 70.0)
            .cornerRadius(4.0)
            .padding(.vertical, 4.0)
    }
}
// title struct
struct ListTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .fontWeight(.semibold)
            .lineLimit(2)
            .minimumScaleFactor(0.5)
    }
}
// upload data struct
struct ListUploadDataView: View {
    var uploadData: String
    var body: some View {
        Text(uploadData)
            .font(.subheadline)
            .foregroundColor(.secondary)
    }
}
