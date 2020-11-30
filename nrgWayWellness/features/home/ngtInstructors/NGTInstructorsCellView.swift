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
            
            NavigationLink(destination: InstructorDetailsView(show: self.$show), isActive: self.$show) {
                
                Text("")
            }
            
            VStack(){
                
                Image(data.image)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(5)
                    .shadow(radius: 5)
//                    .padding(.trailing, 5)
//                    .padding(.leading, 5)
                
                Text(data.name)
                    .fontWeight(.semibold)
                    .frame(width: 80, height: 25)
                    //.padding(2)
                 
                
            }.onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}
 
 

