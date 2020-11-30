//
//  PersonalInformation.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/28/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct PersonalInformation: View {
    var body: some View {
        
        VStack() {
            
            ZStack(alignment: .trailing) {
                
                Image("achivements_blue_curv_background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, alignment: .trailing)
                
                
                
                
                VStack() {
                    HStack(alignment: .firstTextBaseline) {
                        Text("Personal Information")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(navyBlueColor)
                           
                            .padding(.top,35)
                            .padding(.bottom,5)
                            .padding(.leading,30)
                        
                        
                        
                    }.frame(maxWidth: .infinity,alignment:.leading)
                    
                    HStack() {
                         
                        VStack(alignment: .leading) {
                            Text("First Name:")
                                .frame(height: 50)
                                .font(.system(size: 16, weight: .semibold, design: .default))
                                .foregroundColor(blackColor)
                            
                            Text("Last Name:")
                                .frame(height: 50)
                                .font(.system(size: 16, weight: .semibold, design: .default))
                                .foregroundColor(blackColor)
                            
                            Text("Phone Number:")
                                .frame(height: 50, alignment: .leading)
                                .font(.system(size: 16, weight: .semibold, design: .default))
                                .foregroundColor(blackColor)
                            
                            Text("Email Address:")
                                .frame(height: 50)
                                .font(.system(size: 16, weight: .semibold, design: .default))
                                .foregroundColor(blackColor)
                            
                        }
                        .frame(width: 130, alignment: .leading)
                        
                        VStack(alignment: .leading) {
                            Text("hosein")
                                .frame(height: 50)
                                
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(blackColor)
                            
                            Text("alimorai")
                                .frame(height: 50)
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(blackColor)
                            
                            Text("989355840142")
                                .frame(height: 50, alignment: .leading)
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(blackColor)
                            
                            Text("ho.alimoradi@gmail.com")
                                .frame(height: 50)
                                .font(.system(size: 12, weight: .regular, design: .default))
                                .foregroundColor(blackColor)
                            
                        }
                        .frame(width: 180, alignment: .leading)
                        
                    }
                    .frame(maxWidth: .infinity,alignment:.leading)
                    .padding(.leading,18)
                    
                    
                    HStack(alignment: .firstTextBaseline) {
                        Text("")
                            .font(.system(size: 16, weight: .bold, design: .default))
                            .foregroundColor(blackColor)
                            .frame(width: 1, height: 50, alignment: .leading)
                            .padding(.top,5)
                            .padding(.bottom,25)
                            .padding(.leading,30)
                        
                        
                        Spacer()
                        
                        Button(action: {
                                }) {
                                        Text("edit")
                                            .font(.system(.headline, design: .rounded))
                                            .padding(.top,10)
                                            .padding(.bottom,10)
                                            .padding(.trailing,30)
                                            .padding(.leading,30)
                                            .foregroundColor(.white)
                                            .background(navyBlueColor)
                                            .cornerRadius(8)
                                             
                                    }
                        
                        Spacer()
                       
                        
                    }
                    
                }
                
                
            }
            
            
            
            
        }
        .frame(maxWidth: .infinity,alignment:.leading)
        .background(Color.white)
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}

struct PersonalInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInformation()
    }
}
