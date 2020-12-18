//
//  RelatedVideoListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/25/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct RelatedVideoListView: View {
   
   var latestVideos : [LatestVideoEntity]
   
   init(data : [LatestVideoEntity]) {
       latestVideos = data
   }
   
   var body : some View{
       ZStack(alignment: .top){
           
           HStack{

               Text("SIMILLAR VIDEOS")
                   .font(.system(size: 24))
                   .foregroundColor(navyBlueColor)
                   .padding(.leading, 8)
               
               Spacer()
           }
           
           VStack {
               Spacer(minLength: 8)
               
               ScrollView(.horizontal, showsIndicators: false) {
                   
                   HStack(){
                       ForEach(latestVideos){i in
                         RelatedVideoCellView(data: i)
                       }
                   }
               }
               .aspectRatio(3/2, contentMode: .fit)
               .padding(4)
           }
        Spacer(minLength: 50)
            
       }
       .padding(.top, 16)
   }
   
}



