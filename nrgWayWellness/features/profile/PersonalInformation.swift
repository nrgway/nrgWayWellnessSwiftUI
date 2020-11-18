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
            
            HStack(alignment: .firstTextBaseline) {
                Text("Personal Information")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(navyBlueColor)
                   
                    .padding(.top,35)
                    .padding(.bottom,5)
                    .padding(.leading,30)
                Text("              ")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                
                
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("First Name:")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                    .frame(width: 190, height: 50, alignment: .leading)
                    .padding(.top,5)
                    .padding(.bottom,5)
                    .padding(.leading,30)
                Text("Emma ")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                
                
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("Last Name:")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                    .frame(width: 190, height: 50, alignment: .leading)
                    .padding(.leading,30)
                Text("Watson")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                
                
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("Phone Number:")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                    .frame(width: 190, height: 50, alignment: .leading)
                    .padding(.leading,30)
                Text("+1 123-567")
                    .font(.system(size: 10, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                
                
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("Email Address:")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                    .frame(width: 190, height: 50, alignment: .leading)
                    .padding(.top,5)
                    .padding(.bottom,5)
                    .padding(.leading,30)
                Text("Emma ")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                
                
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(blackColor)
                    .frame(width: 190, height: 50, alignment: .leading)
                    .padding(.top,5)
                    .padding(.bottom,25)
                    .padding(.leading,30)
                
                
                
                
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
               
                
            }
            
        }
        
        
       
        .frame(maxWidth: .infinity,alignment:.leading)
        .background(lightGrayColor)
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}

struct PersonalInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInformation()
    }
}
