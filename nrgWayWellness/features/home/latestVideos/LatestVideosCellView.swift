//
//  LatestVideosCellView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct LatestVideosCellView : View {
    
    var data : LatestVideoEntity
    @State var show = false
    
    var body : some View {
        
        ZStack{
            
            NavigationLink(destination: Detail(show: self.$show), isActive: self.$show) {
                
                Text("")
            }
            VStack(alignment: .leading) {
                ZStack() {
                    Image(data.image)
                        .resizable()
                        .cornerRadius(10)
                        .aspectRatio(3/2, contentMode: .fit)
                    
                    VStack(alignment: .leading) {
                        
                        HStack() {
                            
                            Button(action: {
                                    }) {
                                            Text("Intermediate")
                                                .font(.system(.headline, design: .rounded))
                                                .padding(.top,5)
                                                .padding(.bottom,5)
                                                .padding(.trailing,10)
                                                .padding(.leading,10)
                                                .foregroundColor(.white)
                                                .background(lightBrownColor)
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
                            
                            // name
                            Text(data.name)
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Spacer()
                            
                            // post time
                            Text(data.name)
                                .foregroundColor(.white)
                                .font(.subheadline)
                            
                             
                        }
                       
                    }
                    .padding(.bottom, 10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .aspectRatio(3/2, contentMode: .fit)
                   
                }
                
                
            }
            .padding(5)
             
            
            .onTapGesture {
                
                self.show.toggle()
            }
            
        }
    }
}
 
 

struct LatestVideosCellView_Previews: PreviewProvider {
    static var previews: some View {
        LatestVideosCellView(data: latestVideos[0])
        
    }
}
