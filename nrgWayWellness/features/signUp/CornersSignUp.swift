//
//  CornersSignUp.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/5/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct CornersSignUp : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 165))
        
        return Path(path.cgPath)
    }
}

struct CornersSignUp_Previews: PreviewProvider {
    static var previews: some View {
        CornersSignUp()
    }
}
