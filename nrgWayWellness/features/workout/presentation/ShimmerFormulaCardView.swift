//
//  ShimmerFormulaCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/1/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ShimmerFormulaCardView: View {
    @State var show = false
    var center = (UIScreen.main.bounds.width / 2) + 110
    
    var body : some View{
        VStack {
            //cardview
            ZStack{
                
                Color.black.opacity(0.09)
                //.frame(height: 200)
                //.cornerRadius(10)
                
                Color.white
                    //.frame(height: 200)
                    //.cornerRadius(10)
                    .mask(
                        
                        Rectangle()
                            .fill(
                                
                                LinearGradient(gradient: .init(colors: [.clear,Color.white.opacity(0.48),.clear]), startPoint: .top, endPoint: .bottom)
                            )
                            .rotationEffect(.init(degrees: 70))
                            .offset(x: self.show ? center : -center)
                        
                    )
            }
            .cornerRadius(5)
            .aspectRatio(3/2, contentMode: .fit)
            .onAppear {
                withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                    
                    self.show.toggle()
                }
            }
            
            HStack {
                
                
                
            }
            ZStack{
                
                Color.black.opacity(0.09)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                
                Color.white
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                    .mask(
                        
                        Circle()
                            .fill(
                                
                                LinearGradient(gradient: .init(colors: [.clear,Color.white.opacity(0.48),.clear]), startPoint: .top, endPoint: .bottom)
                            )
                            .rotationEffect(.init(degrees: 70))
                        
                        
                    )
            }
            
            .onAppear {
                withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                    
                    self.show.toggle()
                }
            }
            
        }
        .padding(10)
        
        
    }
}


