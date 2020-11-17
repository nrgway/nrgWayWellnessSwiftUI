//
//  AvatarIntroView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/26/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct AvatarIntroView: View {
    var body: some View {
        
        VStack{
            HStack {
                CircleImageView(name: "bird", size: 120).padding(.trailing, 4)
            VStack(alignment: .leading) {
                Text("Emma Watson")
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

struct AvatarIntroView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarIntroView()
    }
}
