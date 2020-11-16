//
//  CircleImageView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
          Image("bird")
            .resizable()
            .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                     .clipShape(Circle())
                     .overlay(Circle().stroke(Color.white, lineWidth: 2))
                     .shadow(radius: 10)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
