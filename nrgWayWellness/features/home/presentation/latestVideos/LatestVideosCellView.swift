//
//  LatestVideosCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct LatestVideosCellView : View {
    
    var video : LatestVideoEntity
    @State var show = false
    
    @State var fullName: String = ""
    @State var avatarUrl: String = ""
    
    init(data : LatestVideoEntity) {
        video = data
        fullName = (data.title ?? "")
    }
    var body : some View {
        
        ZStack{
            
//            NavigationLink(destination: InstructorDetailsView(show: self.$show), isActive: self.$show) {
//                
//                Text("")
//            }
            VStack(alignment: .center) {
                ZStack() {
                    
                    video.completeThumbnailURL.map { url in
                        KFImage(url)
                            .resizable()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                            .cornerRadius(5)
                            .padding(5)
                    }
                    
                    VStack(alignment: .center) {
                        
                        HStack() {
                            
                            Button(action: {
                                    }) {
                                            Text("Intermediate")
                                                .font(.system(.headline, design: .rounded))
                                                .padding(.top,10)
                                                .padding(.bottom,5)
                                            
                                                .foregroundColor(.white)
                                                .background(lightBrownColor)
                                                .cornerRadius(8)
                                                 
                            }
                            
                            Spacer()
                            
                            
                        }
                        
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
                                .font(.headline)
                            
                            Spacer()
                            
                            // post time
                            Text(video.title ?? "")
                                .foregroundColor(.white)
                                .font(.subheadline)
                        }
                    }
                    .aspectRatio(3/2, contentMode: .fit)
                }
            }
            .onTapGesture {
                self.show.toggle()
            }
            
        }
    }
}
 
 
 
