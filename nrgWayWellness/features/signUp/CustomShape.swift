//
//  CustomShape.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/5/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct CustomShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in

            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 40))
            
        }
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
    }
}
