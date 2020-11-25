//
//  NGTInstructorsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct NGTInstructorsView: View {
    var body : some View{
        VStack(spacing: 15){
            
            HStack{

                Text("NGT Instructors").font(.title)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("VIEW ALL")
                    
                }.foregroundColor(lightblueColor)
                
            }.padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(freshitems){i in
                        NGTInstructorsCellView(data: i)
                        
                    }
                }
            }
            
             
        }
    }
    
}

struct NGTInstructorsView_Previews: PreviewProvider {
    static var previews: some View {
        NGTInstructorsView()
    }
}
