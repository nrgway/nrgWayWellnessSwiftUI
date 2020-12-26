//
//  ShimmerInstructorVideoListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/7/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ShimmerInstructorVideoListView: View {
    var body: some View {
        VStack() {
            ScrollView(.vertical, showsIndicators: false) {
               
                let count = 10
                let rowCount = ( Double(count) / Double(2)).rounded(.up)
                
                ForEach(0..<Int(rowCount), id: \.self) { row in
                    Spacer(minLength: 8)
                    HStack(spacing: 4) {
                        ForEach(0..<2, id: \.self) { column in
                            let index = row * 2 + column
                            if index < count {
                                
                                ShimmerLatestVideosCellView()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                            } else {
                                Spacer().frame(maxWidth: .infinity)
                            }
                        }
                    }
                    
                }.frame(maxWidth: .infinity)
            }
        }
        .padding()
    }
}

struct ShimmerInstructorVideoListView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerInstructorVideoListView()
    }
}
