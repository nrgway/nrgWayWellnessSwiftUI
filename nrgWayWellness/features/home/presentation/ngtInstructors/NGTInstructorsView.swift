//
//  NGTInstructorsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct NGTInstructorsView: View {
    var instructors : [InstructorEntity]
    
    init(data : [InstructorEntity]) {
        instructors = data
    }
    
    var body : some View{
        VStack(){
            
            HStack{
                Text("NGT Instructors")
                    .font(.title)
                    .foregroundColor(grayHomeTitileColor)
                
                Spacer()
            }
            .padding(.vertical, 6)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 8){
                    
                    ForEach(instructors){instructor in
                        NGTInstructorsCellView(data: instructor)
                    }
                }
            }
        }.padding(.top, 6)
    }
    
}
