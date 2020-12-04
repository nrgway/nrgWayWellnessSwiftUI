//
//  AvatarIntroView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/26/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct AvatarIntroView: View {
    var info: GetInfoEntity
    @Environment(\.imageCache) var cache: ImageCache
    
    private var spinner: Spinner { Spinner(isAnimating: true, style: .large) }
   
    
    init(getInfoEntity: GetInfoEntity) {
        info = getInfoEntity
    }
    
    var body: some View {
        
        VStack{
            HStack {
                
//                info.poster.map { url in
//                    AsyncImage(
//                        url: url,
//                        cache: cache,
//                        //placeholder: self.spinner,
//                        placeholder: CircleImageView(name: "bird", size: 120),
//                        configuration: { $0.resizable() }
//                    )
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 120, height: 120)
//                        .aspectRatio(contentMode: .fit)
//                             .clipShape(Circle())
//                             .overlay(Circle().stroke(Color.white, lineWidth: 2))
//                             .shadow(radius: 5)
//                    .padding(.trailing, 4)
//
//                }
                
                UrlImageView(urlString: WebAPI.jsonURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                        .aspectRatio(contentMode: .fit)
                             .clipShape(Circle())
                             .overlay(Circle().stroke(Color.white, lineWidth: 2))
                             .shadow(radius: 5)
                    .padding(.trailing, 24)
                
//                CircleImageView(name: "bird", size: 120).padding(.trailing, 4)
                
                VStack(alignment: .leading) {
                     
                    Text( (info.firstName ?? "default") + " " + (info.lastName ?? "") )
                        .font(.headline)
                        .padding(.bottom, 4)
                    
                    HStack {
                        Text("Level \(info.difficultyId ?? 1)")
                            .font(.subheadline)
                            .foregroundColor(navyBlueColor)
                            .padding(.trailing, 5)
                        
                        Text("\(info.difficultyId ?? 1) Points")
                            .font(.subheadline)
                            .foregroundColor(lightGrayColor)
                        
                    }
                }
            }
            .padding(.top, 2)
            .padding(.bottom, 4)
            
            HStack() {
                Text("Difficulty Level:")
                    .font(.subheadline)
                    .padding(.trailing, 5)
                
                ZStack(){
                    
                    Text("Artificial  ")
                }
                
                
            }
        }
        
    }
}

 
