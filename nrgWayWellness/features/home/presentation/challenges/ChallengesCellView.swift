//
//  ChallengesCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct ChallengesCellView: View {
    
    var data : ChallengeEntity
    @State var show = false
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: ChallengeListView(show: self.$show), isActive: self.$show) {
                
                Text("")
            }
            
            VStack(spacing: 5){
                
                Image(data.image)
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 150, height: 150)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                    .padding(5)
                
                Text(data.name).fontWeight(.semibold)
                Text(data.name).foregroundColor(.green).fontWeight(.semibold)
                
            }.onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}
 
 
