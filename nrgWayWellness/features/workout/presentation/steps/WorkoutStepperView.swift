//
//  WorkoutStepperView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/26/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct WorkoutStepperView: View {
    var body: some View {
        
        VStack {
            
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
                                .fill(grayd6d8e7Color)
                                .frame(width: 75, height: 15)
                ZStack {
                    Circle()
                        .fill(grayd6d8e7Color)
                        .frame(width: 30, height: 30)
                }
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(grayd6d8e7Color)
                                .frame(width: 75, height: 15)
                
                ZStack {
                    Circle()
                        .fill(grayd6d8e7Color)
                        .frame(width: 30, height: 30)
                }
            }
            HStack {
                Spacer()
                Text("Workout")
                    .foregroundColor(navyBlueColor)
                
                Spacer(minLength: 4)
                
                Text("Cardio")
                    .foregroundColor(grayd6d8e7Color)
                
                Spacer(minLength: 4)
                
                Text("Stretch")
                    .foregroundColor(grayd6d8e7Color)
                
                Spacer()
                 
            }
        }
        
        
        
        
    }
}

struct WorkoutStepperView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutStepperView()
    }
}
