//
//  SpecificCategoryVideoListItemCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/11/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct SpecificCategoryVideoListItemCardView: View {
    
    @State var show  = false
    @State var difficultyTitle = "Beginner"    
    @State var id : Int = 29
    
    var data: CategoryEntity
    
    init(categoryVideo: CategoryEntity) {
        data = categoryVideo
        
//        switch data.difficultyId {
//        case 1:
//            difficultyTitle = "Beginner"
//            
//        case 2:
//            difficultyTitle = "Intermediate"
//            
//        case 3:
//            difficultyTitle = "Advanced"
//            
//        default:
//            difficultyTitle = "Beginner"
//        }
        
    }
     
    var body : some View {
        
        ZStack{
            
//            NavigationLink(destination: SpecificVideoPlayerWithRelatedVideoView(show: self.$show), isActive: self.$show) {
//                Text("")
//            }
            
            NavigationLink(destination: ChallengeListView(show: self.$show,
                                                          id: self.$id,
                                                          viewModel: ChallengeViewModel()
                                                          //, data: instructor
            ), isActive: self.$show) {

                Text("")
            }
            
            
                           
            VStack {
                ZStack() {
                    
                    data.completeAvatarURL.map { url in
                        KFImage(url)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(5)
                    }
                    
                    VStack(alignment: .center) {
                        
                        HStack() {
                            
                            Button(action: {
                            }) {
                                
                                Text(difficultyTitle)
                                    .font(.system(size: 5))
                                    .padding(3)
                                    .foregroundColor(.white)
                                    .background(lightBrownColor)
                                    .cornerRadius(8)
                                
                            }
                            
                            Spacer()
                            
                            
                        }
                        .padding(.top, 5)
                        .padding(.leading, 5)
                        
                        Spacer()
                        
                        HStack(alignment: .center) {
                            Image("play")
                                .resizable()
                                .frame(width: 30, height: 30, alignment: .center)
                        }
                        .frame(maxWidth: .infinity)
                        
                        Spacer()
                        
                        HStack() {
                            Spacer()
                            // post time
                            Text(String(data.sortingKey ?? 0))
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                        }
                        .padding(.bottom, 5)
                        .padding(.trailing, 5)
                       // .padding(25)
                    }
                    //.aspectRatio(3/2, contentMode: .fit)
                }
                
                HStack(alignment: .lastTextBaseline) {
                    
                    
                    Text(data.name ?? "")
                        .lineLimit(1)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(grayColor)
                        .font(.system(size: 10))
                    
                }
                .padding(.bottom, 5)
            }
            //.aspectRatio(3/2, contentMode: .fit)
            
            .onTapGesture {
                self.show.toggle()
            }
            
        }
    }
}

 


 
