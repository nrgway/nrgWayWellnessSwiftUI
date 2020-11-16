//
//  RoundedImage.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/25/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

//MARK:-
//MARK:- Rounded Image
struct RoundedImage: View {

    var body: some View {
        
        Image("logo")
           .resizable()
           .aspectRatio(contentMode: .fill)
           .frame(width: 150, height: 150)
           .clipped()
           .cornerRadius(150)
           .padding(.bottom, 40)
        
    }

}
 

 
