//
//  ShimmerSpecificCategoryView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/8/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ShimmerSpecificCategoryView: View {
    @State var show = false
    var center = (UIScreen.main.bounds.width / 2) + 110
    
    var body: some View {
        VStack(){
            
            HStack{
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
                .frame(width: 200, height: 15)
                    //.padding(.leading, 8)
                
                
            }
            
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
                }
                
                .onTapGesture {
                    self.show.toggle()
                }
                
            }
            .padding(.leading, 8)
            .padding(.trailing, 8)
            .padding(.top, 8)
            .padding(.bottom, 8)
            
            
            
            VStack {
                HStack{
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
                    .frame(minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: 10,
                                    alignment: .topLeading
                            )
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
                    
                    
                }
                HStack{
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
                    .frame(minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: 10,
                                    alignment: .topLeading
                            )
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
                    
                    
                }
                HStack{
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
                    .frame(minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: 10,
                                    alignment: .topLeading
                            )
                    .padding(.leading, 8)
                    .padding(.trailing, 8)
                    
                    
                }
                HStack{
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
                    .frame(minWidth: 0,
                                    maxWidth: .infinity,
                                    minHeight: 0,
                                    maxHeight: 10,
                                    alignment: .topLeading
                            )
                    .padding(.leading, 8)
                    .padding(.trailing, 100)
                    
                    
                }
            }
             
 
            
        }
    }
}

struct ShimmerSpecificCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerSpecificCategoryView()
    }
}
