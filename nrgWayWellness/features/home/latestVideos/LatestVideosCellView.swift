//
//  LatestVideosCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct LatestVideosCellView : View {
    
    var data : fresh
    @State var show = false
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: Detail(show: self.$show), isActive: self.$show) {
                
                Text("")
            }
            
            VStack(spacing: 10){
                
                Image(data.image)
                    .cornerRadius(15)
                Text(data.name).fontWeight(.semibold)
                Text(data.price).foregroundColor(.green).fontWeight(.semibold)
                
            }.onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}
 
 
