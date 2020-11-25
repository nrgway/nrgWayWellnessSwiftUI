//
//  FinishedStepperView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/5/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct FinishedStepperView: View {
    var body: some View {
        HStack {
            
            ZStack {
                Circle()
                    .fill(navyBlueColor)
                    .frame(width: 30, height: 30)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 15, height: 15)
            }
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(navyBlueColor)
                            .frame(width: 75, height: 15)
            ZStack {
                Circle()
                    .fill(navyBlueColor)
                    .frame(width: 30, height: 30)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 15, height: 15)
            }
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(navyBlueColor)
                            .frame(width: 75, height: 15)
            
            ZStack {
                Circle()
                    .fill(navyBlueColor)
                    .frame(width: 30, height: 30)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 15, height: 15)
            }
        }
    }
}

struct FinishedStepperView_Previews: PreviewProvider {
    static var previews: some View {
        FinishedStepperView()
    }
}
