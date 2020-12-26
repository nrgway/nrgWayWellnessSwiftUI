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
        ZStack{
            
            VStack(alignment: .leading) {
                ZStack() {
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
                    .onAppear {
                        withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                            
                            self.show.toggle()
                        }
                    }
                    //.scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity)
                }
                .cornerRadius(5)
                .aspectRatio(3/2, contentMode: .fit)
                
                HStack() {
                    
                    // avata
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
                    .onAppear {
                        withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                            
                            self.show.toggle()
                        }
                    }
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                    
                    // name
                    VStack(alignment: .leading) {
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
                        .cornerRadius(5)
                        .frame(width: 200, height: 10)
                             
                        ZStack{
                            
                            Color.black.opacity(0.09)
                            
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
                        .onAppear {
                            withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                                
                                self.show.toggle()
                            }
                        }
                        .cornerRadius(5)
                        .frame(width: 100, height: 10)
                         
                        
                    }.padding(.leading, 4)
                    
                    Spacer()
                }
            }
            
            .onTapGesture {
                self.show.toggle()
            }
            
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
        .padding(.top, 8)
        .padding(.bottom, 8)
        
        
    }
}


