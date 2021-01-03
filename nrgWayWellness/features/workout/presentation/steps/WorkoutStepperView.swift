//
//  WorkoutStepperView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/26/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct WorkoutStepperView: View {
    @State private var selcted = 0
    
    var body: some View {
        
        ZStack {
            
            HStack() {

                Button(action: {
                    self.selcted = 0
                }) {
                    WorkoutButton()
                }

                Spacer()

                Button(action: {
                    self.selcted = 1
                }) {
                    CardioButton()
                }

                Spacer()
                Button(action: {
                    self.selcted = 2
                }) {
                    StretchButton()
                }


            }
            .frame(width: 340, height: 60)
            
            
            HStack() {
                
                
                
                VStack {}
                    .frame(width: 10, height: 30)
                
                VStack {
                    
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(grayd6d8e7Color)
                        .frame(minWidth: 0, maxWidth: .infinity
                               , maxHeight: 15, alignment: .leading)
                    
                    Spacer()
                    
                }.frame(width: 105, height: 42)
                VStack {}
                    .frame(width: 35, height: 30)
                
                VStack {
                    
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(grayd6d8e7Color)
                        .frame(minWidth: 0, maxWidth: .infinity
                               , maxHeight: 15, alignment: .leading)
                    
                    Spacer()
                    
                }.frame(width: 105, height: 42)
                
                
                VStack {}
                    .frame(width: 1, height: 30)
                
            }
            .frame(width: 340, height: 60)
            
            
        }
        
        
        
        
    }
}

struct FilledButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .foregroundColor(.white)
            .padding()
            .background(Color.accentColor)
            .cornerRadius(8)
    }
}


struct WorkoutButton: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(navyBlueColor)
                    .frame(width: 30, height: 30)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 15, height: 15)
            }
            Text("Workout")
                .foregroundColor(navyBlueColor)
        }
    }
}

struct CardioButton: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(grayd6d8e7Color)
                    .frame(width: 30, height: 30)
            }
            Text("Cardio")
                .foregroundColor(grayd6d8e7Color)
        }
    }
}


struct StretchButton: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(grayd6d8e7Color)
                    .frame(width: 30, height: 30)
            }
            Text("Stretch")
                .foregroundColor(grayd6d8e7Color)
        }
    }
}

struct WorkoutStepperView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutStepperView()
    }
}
