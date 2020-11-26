//
//  WorkoutsCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import SwiftUI

struct WorkoutsCellView : View {
    
    var data : WorkoutEntity
    @State var show = false
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: Detail(show: self.$show), isActive: self.$show) {
                
                Text("")
            }
            
            VStack(spacing: 10){
                
                Image(data.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 5)
                 
                
            }.onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}
