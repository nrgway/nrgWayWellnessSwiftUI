//
//  ShimmerFavoriteVideoListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/12/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ShimmerFavoriteVideoListView: View {
    var body : some View{
        VStack(){
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 4) {
                    ForEach(0...6,id: \.self){_ in
                        ShimmerFavoriteVideoItemCardView()
                    }
                }
            }
        }
    }
}

 


struct ShimmerFavoriteVideoListView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerFavoriteVideoListView()
    }
}
