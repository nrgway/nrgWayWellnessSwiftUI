//
//  ChallengesCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct ChallengesCellView: View {
    
    var category : CategoryEntity
    
    @State var show = false
     
    @State var fullName: String = ""
    @State var avatarUrl: String = ""
    
    init(data : CategoryEntity) {
        category = data
        fullName = (data.name ?? "")
    }
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: ChallengeListView(show: self.$show,
                                                          viewModel: ChallengeViewModel()
                                                          //, data: instructor
            ), isActive: self.$show) {
                
                Text("")
            }
            
            VStack(spacing: 5){
                
                category.completeAvatarURL.map { url in
                    KFImage(url)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .scaledToFit()
                        .cornerRadius(5)
                        .shadow(radius: 5)
                        .padding(5)
                }
                
                 
                
                Text(category.name ?? "").fontWeight(.semibold)
                //Text(category.countVideos).foregroundColor(.green).fontWeight(.semibold)
                
            }.onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}
 
 
