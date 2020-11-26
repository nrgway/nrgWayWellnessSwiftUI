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
                
                 
                
            }.padding(.vertical, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 5){
                    
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

var freshitems = [
    NGTInstructorEntity(id: 0, name: "Kane", image: "28"),
    NGTInstructorEntity(id: 1, name: "Danny", image: "21"),
    NGTInstructorEntity(id: 2, name: "Alyson", image: "22"),
    NGTInstructorEntity(id: 3, name: "rfgbfd", image: "23")
]
