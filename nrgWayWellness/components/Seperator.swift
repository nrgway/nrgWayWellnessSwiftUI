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
struct Seperator: View {
    
    var body: some View {
    
        VStack {
            
            Divider().background(lightGreyColor)
            
        }.padding()
            .frame(height: 2, alignment: .center)
    }
}

struct Seperator_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
