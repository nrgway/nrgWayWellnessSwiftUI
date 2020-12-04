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

//struct NGTInstructorsView_Previews: PreviewProvider {
//    static var previews: some View {
//        NGTInstructorsView()
//    }
//}

//var freshitems = [
//    NGTInstructorEntity(id: 0, name: "Kane", image: "28"),
//    NGTInstructorEntity(id: 1, name: "Danny", image: "21"),
//    NGTInstructorEntity(id: 2, name: "Alyson", image: "22"),
//    NGTInstructorEntity(id: 3, name: "rfgbfd", image: "23")
//]
