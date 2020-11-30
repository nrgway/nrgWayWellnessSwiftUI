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
                
                info.poster.map { url in
                    AsyncImage(
                        url: url,
                        cache: cache,
                        placeholder: self.spinner,
                        configuration: { $0.resizable() }
                    )
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                        .aspectRatio(contentMode: .fit)
                             .clipShape(Circle())
                             .overlay(Circle().stroke(Color.white, lineWidth: 2))
                             .shadow(radius: 5)
                    .padding(.trailing, 4)
                    
                }
                
//                CircleImageView(name: "bird", size: 120).padding(.trailing, 4)
                
                
                VStack(alignment: .leading) {
                     
                    Text(info.firstName ?? "default" )
                        .font(.headline)
                        .padding(.bottom, 4)
                    
                    HStack {
                        Text("Level 5")
                            .font(.subheadline)
                            .foregroundColor(navyBlueColor)
                            .padding(.trailing, 5)
                        
                        Text("165 Points")
                            .font(.subheadline)
                            .foregroundColor(lightGrayColor)
                        
                    }
                }
            }.padding(.bottom, 4)
            
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

 
