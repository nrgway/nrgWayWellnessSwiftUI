//
//  RelatedVideoCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/25/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct RelatedVideoCellView: View {
    
    var video : LatestVideoEntity
    @State var show = false
    
    @State var fullName: String = ""
    @State var avatarUrl: String = ""
    @State var difficultyTitle = "Beginner"
    
    init(data : LatestVideoEntity) {
        video = data
        fullName = (data.title ?? "")
        
        
        switch data.difficultyId {
        
        case 1:
            difficultyTitle = "Beginner"
            
        case 2:
            difficultyTitle = "Intermediate"
            
        case 3:
            difficultyTitle = "Advanced"
            
        default:
            difficultyTitle = "Beginner"
        }
        
    }
    
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: SpecificVideoPlayerWithRelatedVideoView(show: self.$show), isActive: self.$show) {
                Text("")
            }
            
            VStack {
                
                VStack(alignment: .center) {
                    ZStack() {
                        
                        video.completeThumbnailURL.map { url in
                            KFImage(url)
                                .resizable()
                                //.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                //.frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .cornerRadius(5)
                                //.padding(5)
                        }
                        
                        VStack(alignment: .center) {
                            
                            HStack() {
                                
                                Button(action: {
                                }) {
                                    
                                    Text(difficultyTitle)
                                        .font(.system(size: 10))
                                        .padding(5)
                                        .foregroundColor(.white)
                                        .background(lightBrownColor)
                                        .cornerRadius(8)
                                    
                                }
                                
                                Spacer()
                                
                                
                            }
                            .padding(25)
                            
                            Spacer()
                            
                            HStack(alignment: .center) {
                                Image("play")
                                    .resizable()
                                    .frame(width: 70, height: 70, alignment: .center)
                            }
                            .frame(maxWidth: .infinity)
                            
                            Spacer()
                            
                            HStack() {
                                
                                // name
                                Text(video.title ?? "")
                                    .foregroundColor(.white)
                                    .font(.system(size: 10))
                                
                                Spacer()
                                
                                // post time
                                Text(video.title ?? "")
                                    .foregroundColor(.white)
                                    .font(.system(size: 10))
                            }
                            .padding(25)
                        }
                        //.aspectRatio(3/2, contentMode: .fit)
                    }
                }
                .aspectRatio(3/2, contentMode: .fit)
                
                
                HStack {
                    Image("21")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    
                    VStack {
                        Text("Isolation Session Vol #12")
                            .font(.system(size: 12))
                            .foregroundColor(gray3a3a3aColor)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 1)
                                  
                                  
                        Text("Bella Smith")
                            .font(.system(size: 12))
                            .foregroundColor(gray525252Color)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                     
                    VStack {
                        
                        Text("2 DAYS AGO")
                            .font(.system(size: 12))
                            .foregroundColor(lightGrayColor)
                        
                        Button(action: {
                        }) {
                            Text("Advanced")
                                .font(.system(size: 10))
                                .padding(.top, 5)
                                .padding(.bottom, 5)
                                .padding(.trailing, 10)
                                .padding(.leading, 10)
                                .foregroundColor(.white)
                                .background(lightRedColor)
                                .cornerRadius(12)
                        }
                        
                    }
                }
            }
           
            .onTapGesture {
                self.show.toggle()
            }
            
        }
        //.aspectRatio(3/2, contentMode: .fit)
    }
}




