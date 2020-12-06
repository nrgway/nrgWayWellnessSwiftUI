//
//  CustomToolBarView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/9/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct CustomToolBarView: View {
    var body: some View {
        
        Image("toolbar")
            .resizable()
            .frame(maxWidth: .infinity)
            .frame(height: 80)
            .background(navyBlueColor.opacity(0.0))
 
        
            //.background(Color.)
    }
    
}
 
 
 

 
 

struct CustomToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomToolBarView()
    }
}
