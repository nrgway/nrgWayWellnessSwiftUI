//
//  AchivementList.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/27/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct AchivementList: View {
    
    var data: [InstructorEntity]
    
    init(instructorVideos: [InstructorEntity]) {
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
                                
                                AchivementListItemCardView(instructor: self.data[index])
                                    .frame(width: UIScreen.main.bounds.width / 2 - 25, height: UIScreen.main.bounds.width / 2 - 25)
                                    //.frame(maxWidth: .infinity, alignment: .leading)
                                    
                            } else {
                                Spacer().frame(maxWidth: .infinity)
                            }
                        }
                    }
                    
                }.frame(maxWidth: .infinity)
            }
        }
        .padding()
        .animation(.spring())
        
    }
}



