//
//  Subview.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/14/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct Subview: View {
    
    var imageString: String
    
    var body: some View {
        
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.width * 500) / 414)
            .clipped()
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "2")
    }
}
