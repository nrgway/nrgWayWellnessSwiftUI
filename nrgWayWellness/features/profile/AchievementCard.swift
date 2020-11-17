//
//  AchievementsCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/26/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct AchivementCard : View {
    
    @State var show  = false
    var body : some View{
        
        VStack(spacing: 8){
            
            NavigationLink(destination: AchivementsView(show: $show), isActive: $show) {
                
                HStack( ) {
                    Spacer()
                    Text("Achivements")
                        .font(.system(size: 26, weight: .bold, design: .default))
                        .foregroundColor(blackColor)
                        .padding(.top,20)
                        .padding(.bottom,20)
                        .padding(.leading,50)
                        
                    Spacer()
                    Image("bird")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .padding(.trailing, 20)
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(lightGrayColor)
                 
                .modifier(CardModifier())
                .padding(.all, 10)
                 
            }
             
            
            HStack{
                Button(action: {
                    show = true
                }) {
                }.padding(.trailing, 0)
            }
            
             
        }
    }
}

struct AchievementsCardView_Previews: PreviewProvider {
    static var previews: some View {
        AchivementCard()
    }
}
