//
//  InstructorProfileView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct InstructorProfileView: View {
    @State private var showDetails = false
    //var data : InstructorEntity
        
    var body: some View {
        VStack(){
            //Image(systemName: "person.crop.circle")
            UrlImageView(urlString: WebAPI.jsonURL)
                 
              .frame(width: 100, height: 100)
                  .aspectRatio(contentMode: .fit)
                       .clipShape(Circle())
                       .overlay(Circle().stroke(Color.white, lineWidth: 2))
                       .shadow(radius: 5)
            
            Text("data").font(.title)
            
            VStack {
                if showDetails {
                    Text("")
                        .font(.largeTitle)
                }
                
                Button(action: {
                            self.showDetails.toggle()
                        }) {
                    if showDetails {
                        Text("hide")
                    } else {
                        Text("Show details")
                    }
                            
                }.foregroundColor(navyBlueColor)
                .padding(.vertical)
                .frame(width: 320)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lightGrayColor, lineWidth: 1)
                )
                 

                        
            }
             
            
        }
    }
}
 
