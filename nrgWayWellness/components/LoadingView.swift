//
//  LoadingView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/26/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Spacer()
            //Spinner(isAnimating: true, style: .large)
            CircleLoader()
            Spacer()
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
