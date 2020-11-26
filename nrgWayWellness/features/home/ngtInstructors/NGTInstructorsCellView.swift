//
//  NGTInstructorsCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct NGTInstructorsCellView : View {
    
    var data : NGTInstructorEntity
    @State var show = false
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: Detail(show: self.$show), isActive: self.$show) {
                
                Text("")
            }
            
            VStack(spacing: 10){
                
                Image(data.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)                     
                    .shadow(radius: 5)
                    .padding(5)
                
                Text(data.name)
                    .fontWeight(.semibold)
                    .padding(10)
                 
                
            }.onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}
 
 

