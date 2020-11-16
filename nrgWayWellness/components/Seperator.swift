//
//  Seperator.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/25/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
//MARK:-
//MARK:- Seperator (Bottom line view)
struct seperator: View {
    
    var body: some View {
    
        VStack {
            
            Divider().background(lightGreyColor)
            
        }.padding()
            .frame(height: 1, alignment: .center)
    }
}
