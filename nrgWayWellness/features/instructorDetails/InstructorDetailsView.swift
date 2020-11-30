//
//  InstructorDetailsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct InstructorDetailsView: View {
    @Binding var show : Bool
    var body: some View {
        VStack(){
            VStack(){
                HStack(){
                    
                    Button(action: {
                        
                        self.show.toggle()
                        
                    }) {
                        
                        Image("Back").renderingMode(.original)
                            .padding(8)
                    }
                    
                    Spacer()

                }
                .padding(.leading,8)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
                VStack(){
                    
                    InstructorProfileView()
                    Spacer()
                    
                    InstructorVideoListView()
                    
                    
                }
            }
            
            
        }
        
    }
}

 

 

 
