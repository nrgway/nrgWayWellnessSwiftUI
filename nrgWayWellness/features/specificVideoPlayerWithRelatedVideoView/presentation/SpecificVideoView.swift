//
//  SpecificVideoView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/25/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct SpecificVideoView: View {
    @State var likeClick = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                Image("21")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                
                VStack {
                    Text("Isolation Session Vol #12")
                        .font(.system(size: 12))
                        .foregroundColor(gray3a3a3aColor)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 1)
                              
                              
                    Text("Bella Smith")
                        .font(.system(size: 12))
                        .foregroundColor(gray525252Color)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                 
                VStack {
                    
                    Text("2 DAYS AGO")
                        .font(.system(size: 12))
                        .foregroundColor(lightGrayColor)
                    
                    Button(action: {
                    }) {
                        Text("Advanced")
                            .font(.system(size: 10))
                            .padding(.top, 5)
                            .padding(.bottom, 5)
                            .padding(.trailing, 10)
                            .padding(.leading, 10)
                            .foregroundColor(.white)
                            .background(lightRedColor)
                            .cornerRadius(12)
                    }
                    
                }
            }
              .padding(10)
            
            HStack {
                
                
                VStack {
                    Text("Wall sit with press:")
                        .font(.system(size: 12))
                        .foregroundColor(gray3a3a3aColor)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 1)
                              
                    VStack {
                        Text("Beginner /  20 Reps")
                            .font(.system(size: 12))
                            .foregroundColor(gray525252Color)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Text("Beginner /  20 Reps")
                            .font(.system(size: 12))
                            .foregroundColor(gray525252Color)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        
                        Text("Beginner /  20 Reps")
                            .font(.system(size: 12))
                            .foregroundColor(gray525252Color)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                    }.padding(.leading, 8)
                    
                }
                
                 
                ZStack(alignment: .bottomTrailing) {
                    
                    
                    
                    Button(action: {
                        
                        self.likeClick = !self.likeClick
                        
                    }) {
                        
                        Image(systemName: "suit.heart.fill")
                            .font(.title)
                            .foregroundColor(self.likeClick == true ? .red : Color.black.opacity(0.1))
                        
                    }
                    .padding(12)
                    
                    Text("23")
                        .font(.system(size: 12))
                        .foregroundColor(lightGrayColor)
                       
                }
            }
              .padding(10)
            
        }.padding(10)
        
        
    }
}
struct SpecificVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SpecificVideoView()
    }
}
