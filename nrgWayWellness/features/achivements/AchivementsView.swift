//
//  AchivementsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/26/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct AchivementsView: View {
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
                    Text("Achievements").font(.title)
                    AchivementList()
                    
                }
            }
            
           
                
//            NavigationView{
//
//                VStack(){
//                    Text("Achievements").font(.title)
//                    AchivementList()
//
//                }
//                //.navigationBarBackButtonHidden(false)
//                .navigationBarTitle("")
//                //.navigationBarHidden(true)
//
//            }
            
            
            
        }
        
    }
}

 
