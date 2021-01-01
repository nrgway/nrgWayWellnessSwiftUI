//
//  FavoriteVideoListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/1/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//FavoriteVideoItemCardView

import SwiftUI

struct FavoriteVideoListView: View {
    var data : [CategoryEntity]
    
    init(favoriteVideos : [CategoryEntity]) {
        data = favoriteVideos
    }
    
    var body : some View{
        VStack(){
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 4){
                    
                    ForEach(data){favoriteVideo in
                        FavoriteVideoItemCardView(favoriteVideo: favoriteVideo)
                    }
                }
            }
        }
    }
    
}
