//
//  InstructorVideoListItemCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/16/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct InstructorVideoListItemCardView: View {
    
    
    @State var show  = false
    
    var data: InstructorVideoEntity
    
    init(instructorVideo: InstructorVideoEntity) {
        data = instructorVideo
    }
     
    var body : some View {
        
        VStack(spacing: 8){
            
            NavigationLink(destination: SpecificVideoPlayerWithRelatedVideoView(show: $show), isActive: $show) {
                
                data.completeAvatarURL.map { url in
                    KFImage(url)
                        .resizable()
                        
                        .renderingMode(.original)
                        .aspectRatio(3/2, contentMode: .fit)
//                        .frame(width: UIScreen.main.bounds.width / 2 - 25, height: UIScreen.main.bounds.width / 2 - 25)
                        .scaledToFit()
                        .cornerRadius(22)

                }
                
//                KFImage(URL(string: "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png"))
//                    .resizable()
//                    .renderingMode(.original)
//                    .frame(width: UIScreen.main.bounds.width / 2 - 25, height: UIScreen.main.bounds.width / 2 - 25)
//                    .scaledToFit()
//                    .cornerRadius(22)
                 
            }
            
            HStack{
                
                VStack(alignment: .leading, spacing: 4){
                
                    Text(data.title ?? "")
                        .fontWeight(.regular)
                        .foregroundColor(grayColor)
                    
//                    Text(data.).foregroundColor(grayColor)
//                        .padding(.bottom, 5)
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                     
                    
                }.padding(.trailing, 15)
            }
        }
    }
}

 


 
