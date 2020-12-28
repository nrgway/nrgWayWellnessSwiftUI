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
            
            HStack{
                Text((data.name ?? "")).font(.title)
                Spacer()
            }
            
            data.completeImageUrlAsURL.map { url in
                KFImage(url)
                    .resizable()
                    .renderingMode(.original)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .aspectRatio(3/2, contentMode: .fill) 
                    .scaledToFit()
                    .cornerRadius(22)
                    .padding(.top, 5)
            }
              
            Text(data.descriptionField?.htmlStripped ?? "")
                .fixedSize(horizontal: false, vertical: true)
                .frame(alignment: .center)
                .font(.system(size: 12))
                .padding(.top, 15)
 
            
        }
    }
}

