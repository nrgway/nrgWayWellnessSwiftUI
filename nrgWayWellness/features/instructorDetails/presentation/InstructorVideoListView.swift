//
//  SwiftUIView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct InstructorVideoListView: View {
    var data: [InstructorVideoEntity]
    
    init(instructorVideos: [InstructorVideoEntity]) {
        data = instructorVideos
    }
     
    private let columnCount: Int = 2
    
    var body : some View {
         
        VStack() {
            ScrollView(.vertical, showsIndicators: false) {
               
                let count = self.data.count
                let rowCount = ( Double(count) / Double(self.columnCount)).rounded(.up)
                
                ForEach(0..<Int(rowCount), id: \.self) { row in
                    Spacer(minLength: 8)
                    HStack(spacing: 4) {
                        ForEach(0..<self.columnCount, id: \.self) { column in
                            let index = row * columnCount + column
                            if index < count {
                                
                                InstructorVideoListItemCardView(instructorVideo: self.data[index])
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                            } else {
                                Spacer().frame(maxWidth: .infinity)
                            }
                        }
                    }
                    
                }.frame(maxWidth: .infinity)
            }
        }
          
        
    }
}



 



