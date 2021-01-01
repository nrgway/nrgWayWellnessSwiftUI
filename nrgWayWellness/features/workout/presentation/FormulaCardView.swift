//
//  FormulaCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/12/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
// ShimmerFormulaCardView

import SwiftUI
import Alamofire
import KingfisherSwiftUI

struct FormulaCardView: View {
    
    @State var show = false
    let formulaEntity: FormulaEntity
    
    @State var difficultyTitle = "Beginner"
    @Environment(\.imageCache) var cache: ImageCache
    
    init(formula: FormulaEntity) {
        formulaEntity = formula
    }
    
    
    
    var body: some View {
        
        ZStack{
            
            NavigationLink(destination: SpecificVideoPlayerWithRelatedVideoView(show: self.$show), isActive: self.$show) {
                Text("")
            }
            
            VStack(alignment: .leading) {
                ZStack() {
                    formulaEntity.completeVideoUrl.map { url in
                                            KFImage(url)
                                                .resizable()
                                                //.scaledToFit()
                                                .frame(minWidth: 0, maxWidth: .infinity)
                                                                    
                                               // .aspectRatio(3/2, contentMode: .fit)
                        
                    }
                     
                    
                    VStack(alignment: .leading) {
                        
                        HStack() {
                            
                            Button(action: {
                                    }) {
                                Text("Advanced")
                                    .font(.system(size: 10))
                                    .padding(5)
                                    .foregroundColor(.white)
                                    .background(lightRedColor)
                                    .cornerRadius(8)
                                                 
                            }.padding(5)
                            
                            Spacer()
                             
                            
                        }
                        
                        Spacer()
                            
                        HStack( ) {
                            Image("play")
                                .resizable()
                                .frame(width: 70, height: 70, alignment: .center)
                        }
                        .frame(maxWidth: .infinity )
                       
                        
                        Spacer()
                        
                        HStack() {
                            Spacer()
                            // post time
                            Text(formulaEntity.createdAt ?? "")
                                .foregroundColor(.white)
                                .font(.subheadline)
                             
                        }
                       
                    }
                    .padding(.bottom, 10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    
                   
                }
                .cornerRadius(5)
                .aspectRatio(3/2, contentMode: .fit)
                
                HStack() {
                    
                    // avata
                    formulaEntity.completeAvatarURL.map { url in
                                            KFImage(URL(string: "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png"))
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                                .clipShape(Circle())
                                                .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 2))
                                                                    
                                               // .aspectRatio(3/2, contentMode: .fit)
                        
                    }
                     
                    // name
                    VStack {
                        Text("Isolation Session Vol #12")
                            .font(.system(size: 12))
                            .foregroundColor(gray3a3a3aColor)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Text("Bella Smith")
                            .font(.system(size: 12))
                            .foregroundColor(gray525252Color)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                    }.padding(.leading, 8)
                    
                    Spacer()
                    
                    // post time
                    Text(formulaEntity.createdAt ?? "")
                        .foregroundColor(grayaeaeaeColor)
                        .font(.subheadline)
                    
                     
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
 
