//
//  AchivementListItemCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/29/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct AchivementListItemCardView: View {
    
    @State var show  = false
    @State var difficultyTitle = "Beginner"
    
    var data: InstructorEntity
    
    init(instructor: InstructorEntity) {
        data = instructor
        
        
    }
     
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: SpecificVideoPlayerWithRelatedVideoView(show: self.$show), isActive: self.$show) {
                Text("")
            }
            VStack {
                data.completeAvatarURL.map { url in
                    KFImage(url)
                        
                        .resizable()
                        .renderingMode(.original)
                        .scaledToFit()
//                        .frame(width: UIScreen.main.bounds.width / 2 - 25, height: UIScreen.main.bounds.width / 2 - 25)
                        .aspectRatio(3/2, contentMode: .fill)
                        .cornerRadius(15)
                        //.aspectRatio(1/1, contentMode: .fit)
                         
                }
                
                Text(data.lastName ?? "")
                    .lineLimit(1)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(grayColor)
                    .font(.system(size: 10))
                
                Text(data.lastName ?? "")
                    .lineLimit(1)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(grayColor)
                    .font(.system(size: 10))
            }
            //.aspectRatio(3/2, contentMode: .fit)
            
            .onTapGesture {
                self.show.toggle()
            }
            
        }
    }
}

 


 
