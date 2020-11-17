//
//  CircleImageView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct CircleImageView: View {
    var name: String
    var size: CGFloat
    
    var body: some View {
          Image(name)
            .resizable()
            .frame(width: size, height: size)
                .aspectRatio(contentMode: .fit)
                     .clipShape(Circle())
                     .overlay(Circle().stroke(Color.white, lineWidth: 2))
                     .shadow(radius: 5)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(name: "bird", size: 120)
    }
}
