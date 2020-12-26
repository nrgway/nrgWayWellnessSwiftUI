//
//  WorkoutsCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
// ShimmerWorkoutsCellView


import SwiftUI
import KingfisherSwiftUI

struct WorkoutsCellView : View {
    
    var data : FormulaEntity
    
    @State var show = false
    
    var body : some View {
        
        ZStack(alignment: .center){
            
//                data.completeAvatarURL.map { url in
//                    KFImage(url)
//                        .resizable()
//                        .frame(width: 100, height: 100)
//                        .aspectRatio(contentMode: .fit)
//                        .clipShape(Circle())
//                        .overlay(Circle().stroke(Color.white, lineWidth: 1))
//                        .padding(5)
//                }
            
            
            KFImage(URL(string: data.completeAvatarAsString))
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
            
            
            Text(data.name ?? "")
                .font(.system(size: 10))
                .foregroundColor(Color.white)
             
            
        }.onTapGesture {
            
            self.show.toggle()
        }
    }
}
