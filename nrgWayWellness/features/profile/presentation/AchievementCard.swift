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
        
        VStack(){
            
            
             
            ZStack{
             
                NavigationLink(destination: AchivementsView(show: $show), isActive: $show) {
                    
                    HStack( ) {
                        Image("achivements_background")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70,height: 80)
                                 
                        Spacer()
                        Text("Achivements")
                            .font(.system(size: 26, weight: .bold, design: .default))
                            .foregroundColor(blackColor)
                            .padding(.top,20)
                            .padding(.bottom,20)
                            
                        Spacer()
                        Image("achivements_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .padding(.trailing, 20)
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.white)
                     
                    .modifier(CardModifier())
                    .padding(.all, 20)
                     
                }
                
                HStack( ) {
                    Image("achivements_background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150,height: 160)
                             
                    Spacer()
                    
                }
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
