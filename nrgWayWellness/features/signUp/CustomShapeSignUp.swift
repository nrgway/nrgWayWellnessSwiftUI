//
//  CustomShapeSignUp.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/5/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct CustomShapeSignUp : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in

            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height - 30))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width / 1.5, y: rect.height ))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 120))
            
        }
    }
}

struct CustomShapeSignUp_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeSignUp()
    }
}
