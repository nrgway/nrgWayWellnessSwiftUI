//
//  AchivementCardView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/27/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct AchivementCardView: View {
    
    var row : AchivementRow
    @State var show  = false
    
    var body : some View{
        
        VStack(spacing: 8){
            
            NavigationLink(destination: DetailView(show: $show), isActive: $show) {
                
                Image(row.image).renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: UIScreen.main.bounds.width / 2 - 25).cornerRadius(15)
            }
            
            HStack{
                
                VStack(alignment: .leading, spacing: 4){
                
                    Text(row.name).fontWeight(.heavy)
                    
                    Text(row.price).foregroundColor(grayColor)
                        .padding(.bottom, 5)
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image("option").renderingMode(.original)
                    
                }.padding(.trailing, 15)
            }
        }
    }
}

 
