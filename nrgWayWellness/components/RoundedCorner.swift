//
//  RoundedCorner.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/30/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
struct RoundedCorner : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
