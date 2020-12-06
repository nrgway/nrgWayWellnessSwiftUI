//
//  SpecificVideoPlayerWithRelatedVideoView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/12/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct SpecificVideoPlayerWithRelatedVideoView: View {
    
    @Binding var show : Bool
    
    var body: some View {
        
        VStack(spacing : 0){
            
            HStack(spacing: 18){
                
                Button(action: {
                    
                    self.show.toggle()
                    
                }) {
                    
                    Image("Back").renderingMode(.original)
                }
                
                Spacer()
                 

            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .padding(15)
        
            
            VStack() {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                VideoView()
                    .aspectRatio(3/2, contentMode: .fit)
            }
            
        }
        
        
       
    }
}

 
