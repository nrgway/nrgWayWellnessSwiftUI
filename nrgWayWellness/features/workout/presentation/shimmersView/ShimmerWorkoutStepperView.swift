//
//  ShimmerWorkoutStepperView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/1/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ShimmerWorkoutStepperView: View {
    @State var show = false
    var body: some View {
        VStack {
            
            HStack {
                ZStack {
                    ZStack{
                        
                        Color.black.opacity(0.09)
                        
                        Color.white
                            .mask(
                                Rectangle()
                                    .fill(
                                        LinearGradient(gradient: .init(colors: [.clear,Color.white.opacity(0.48),.clear]), startPoint: .top, endPoint: .bottom)
                                    )
                                    .rotationEffect(.init(degrees: 70))
                                    //.offset(x: self.show ? center : -center)
                                
                            )
                    }
                    .onAppear {
                        withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                            
                            self.show.toggle()
                        }
                    }
                    .cornerRadius(5)
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
