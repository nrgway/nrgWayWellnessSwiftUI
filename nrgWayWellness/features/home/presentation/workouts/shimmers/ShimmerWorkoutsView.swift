//
//  ShimmerWorkoutsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/5/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct ShimmerWorkoutsView: View {
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
                    .padding(.leading, 8)
                
                Spacer()
            }
            .padding(.vertical, 1)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 8){
                    
                    ForEach(0...6,id: \.self){_ in
                        ShimmerWorkoutsCellView()
                    }
                }
            }
            
             
        }
    }
}

struct ShimmerWorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerWorkoutsView()
    }
}
