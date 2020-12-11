//
//  LatestVideosView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
 
struct LatestVideosView: View {
    
    var latestVideos : [LatestVideoEntity]
    
    init(data : [LatestVideoEntity]) {
        latestVideos = data
    }
    
    var body : some View{
        VStack(spacing: 5){
            
            HStack{

                Text("Latest Videos")
                    .font(.title)
                    .foregroundColor(grayHomeTitileColor)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("VIEW ALL")
                    
                }.foregroundColor(lightblueColor)
                
                
            }.padding(.trailing, 5)
            .padding(.leading,5)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 8){
                    
                    ForEach(latestVideos){i in
                        LatestVideosCellView(data: i)
                    
                    }
                }
            }.aspectRatio(3/2, contentMode: .fit)
            
             
        }
    }
    
}

