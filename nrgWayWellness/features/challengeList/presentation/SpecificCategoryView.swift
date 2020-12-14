//
//  SpecificCategoryView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/22/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct SpecificCategoryView: View {
    
    //@State private var showDetails = false
    var data : SpecificCategoryEntity
    
    
    var body: some View {
        VStack(){
            
            
            Text((data.name ?? "")).font(.title)
            
            data.completeImageUrlAsURL.map { url in
                KFImage(url)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(3/2, contentMode: .fit)
                    .scaledToFit()
                    .cornerRadius(22)
            }
            
            
            Text(data.descriptionField ?? "")
                .fixedSize(horizontal: false, vertical: true)
                .frame(alignment: .center)
                .font(.system(size: 12))
                .padding(15)
            
            
        }
    }
}

