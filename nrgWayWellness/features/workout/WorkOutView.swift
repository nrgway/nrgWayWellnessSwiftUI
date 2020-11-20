//
//  WorkOutView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct WorkOutView: View {
    var body: some View {
        
        GeometryReader { geometry in
                    VStack {
                        Text("See Details")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                            .background(Capsule().stroke(Color.white, lineWidth: 2))
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("Add to Cart")
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width / 1.5)
                                .background(Color.yellow)
                                .cornerRadius(10)
                            
                        }
                        .shadow(radius: 5)
                    }
                    .frame(width: geometry.size.width,
                           height: geometry.size.height,
                               alignment: .topLeading)
                    .background(LinearGradient(gradient: .init(colors: [navyBlueColor, lightblueColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
                    .edgesIgnoringSafeArea(.bottom)
                }
        
         
    }
}

struct WorkOutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkOutView()
    }
}
