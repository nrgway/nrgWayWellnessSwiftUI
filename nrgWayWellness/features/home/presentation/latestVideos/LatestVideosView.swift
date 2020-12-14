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
        ZStack(alignment: .top){
            
            HStack{

                Text("Latest Videos")
                    .font(.system(size: 24))
                    .foregroundColor(grayHomeTitileColor)
                    .padding(.leading, 8)
                
                Spacer()
                
                Button(action: {
                }) {
                    Text("VIEW ALL")
                }
                .font(.system(size: 14))
                .padding(.trailing, 8)
                .foregroundColor(lightblueColor)
            }
            
            VStack {
                Spacer(minLength: 8)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(){
                        ForEach(latestVideos){i in
                            LatestVideosCellView(data: i)
                        }
                    }
                }
                .aspectRatio(3/2, contentMode: .fit)
                .padding(4)
            }
             
        }
        .padding(.top, 16)
    }
    
}

