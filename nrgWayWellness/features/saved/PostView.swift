//
//  PostView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/28/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation
import SwiftUI

/// PostView
struct PostView: View {
   
    /// post
    let post: Post
    
    /// body
    var body: some View {
        VStack(alignment: .leading) {
            ZStack() {
                Image(post.image ?? "")
                    .resizable()
                    .aspectRatio(3/2, contentMode: .fit)
                
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
                        // close
                        Image("close")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 5))
                        
                       
                         
                        
                        
                        
                       
                        
                         
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
                        Image("22")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                        
                        // name
                        Text(post.user.name)
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        Spacer()
                        
                        // post time
                        Text(post.time)
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
            Text(post.content ?? "").font(.body).lineLimit(nil)
            
        }
        .padding(15)
        
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: SavedMockData.posts()[1])
    }
}

