//
//  FavoriteVideoItemCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/1/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct FavoriteVideoItemCardView: View {
    @State var show = false
    let data: CategoryEntity
    
    @State var difficultyTitle = "Beginner"
    
    init(favoriteVideo: CategoryEntity) {
        data = favoriteVideo
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack() {
                
                data.completeAvatarURL.map { url in
                                        KFImage(url)
                                            .resizable()
                                            //.scaledToFit()
                                            .frame(minWidth: 0, maxWidth: .infinity)
                                                                
                                            .aspectRatio(3/2, contentMode: .fit)
                    
                }
//                Image(post.image ?? "")
//                    .resizable()
//                    .aspectRatio(3/2, contentMode: .fit)
                
                VStack(alignment: .leading) {
                    
                    HStack() {
                        
                        Button(action: {
                                }) {
                                        Text("Intermediate")
                                            .font(.system(.headline, design: .rounded))
                                            .padding(.top,5)
                                            .padding(.bottom,5)
                                            .padding(.trailing,10)
                                            .padding(.leading,10)
                                            .foregroundColor(.white)
                                            .background(lightBrownColor)
                                            .cornerRadius(8)
                                             
                        }.padding(5)
                        
                        Spacer() 
                        
                    }
                    
                    Spacer()
                        
                    HStack( ) {
                        Image("play")
                            .resizable()
                            .frame(width: 70, height: 70, alignment: .center)
                    }
                    .frame(maxWidth: .infinity )
                   
                    
                    Spacer()
                    
                    HStack() {
                        
                        // avatar
                        data.completeAvatarURL.map { url in
                                                KFImage(url)
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                                    .clipShape(Circle())
                                                    .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                            
                        }
//                        Image("22")
//                            .resizable()
//                            .frame(width: 50, height: 50)
//                            .clipShape(Circle())
//                            .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                        
                        // name
                        Text(data.name ?? "")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        Spacer()
                        
                        // post time
                        Text(data.name ?? "")
                            .foregroundColor(.white)
                            .font(.subheadline)
                        
                         
                    }
                   
                }
                .padding(.bottom, 10)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .aspectRatio(3/2, contentMode: .fit)
               
            }
            
            
            // post content
            Text(data.name ?? "").font(.body).lineLimit(nil)
            
        }
        .padding(15)
        
        
    }
}

 
