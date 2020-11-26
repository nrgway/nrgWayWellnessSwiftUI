//
//  LatestVideosView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
 
struct LatestVideosView: View {
    var body : some View{
        VStack(spacing: 15){
            
            HStack{

                Text("Latest Videos").font(.title)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("VIEW ALL")
                    
                }.foregroundColor(lightblueColor)
                
            }.padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(latestVideos){i in
                        LatestVideosCellView(data: i)
                        //FreshCellView(data: i)
                    }
                }
            }
            
             
        }
    }
    
}

struct LatestVideosView_Previews: PreviewProvider {
    static var previews: some View {
        LatestVideosView()
    }
}
