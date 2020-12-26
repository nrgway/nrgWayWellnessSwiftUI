//
//  ShimmerWorkoutsCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/5/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ShimmerWorkoutsCellView: View {
    @State var show = false
    var center = (UIScreen.main.bounds.width / 2) + 110
       
    var body : some View {
        
        ZStack(alignment: .center){
            ZStack{
                
                Color.black.opacity(0.09)
                Color.white
                    .mask(                        
                        Rectangle()
                            .fill(
                                LinearGradient(gradient: .init(colors: [.clear,Color.white.opacity(0.48),.clear]), startPoint: .top, endPoint: .bottom)
                            )
                            .rotationEffect(.init(degrees: 70))
                            .offset(x: self.show ? center : -center)                        
                    )
            }
            .onAppear {
                withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                    self.show.toggle()
                }
            }
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
            
        }
        .padding(.leading, 8)
        .padding(.top, 2)
        .padding(.bottom, 2).onTapGesture {
            
            self.show.toggle()
        }
    }
}

struct ShimmerWorkoutsCellView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerWorkoutsCellView()
    }
}
