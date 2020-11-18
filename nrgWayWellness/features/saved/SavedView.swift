//
//  SavedView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct SavedView: View {
    /// posts
    let posts = SavedMockData.posts()
    
    
    var body: some View {
        NavigationView {
            List {
                
                // statuses
//                ScrollView(.horizontal, content: {
//                    HStack(spacing: 10) {
//                        ForEach(statuses) { status in
//                            StatusView(status: status)
//                        }
//                    }
//                    .padding(.leading, 10)
//                })
//                .frame(height: 190)
                
                
                // posts
                ForEach(posts) { post in
                    PostView(post: post)
                }
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
            .navigationBarTitle(Text("Saved"))
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
