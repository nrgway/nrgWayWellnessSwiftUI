//
//  SwiftUIView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct InstructorVideoListView: View {
    
    var achivements = [

        AchivementType(id: 0,rows: [
                        AchivementRow(id:0,name: "NRG Third Eye", price: "subscriber after watching", image: "41"),
                        
                        AchivementRow(id:1,name: "NRG Third Eye", price: "subscriber after watching", image: "41")]),

        AchivementType(id: 1,rows: [
                        AchivementRow(id:2,name: "NRG Third Eye", price: "subscriber after watching", image: "42"),
                        
                        AchivementRow(id:3,name: "NRG Third Eye", price: "subscriber after watching", image: "43")]),
        
        AchivementType(id: 2,rows: [
                        
                        AchivementRow(id:4,name: "NRG Third Eye", price: "subscriber after watching", image: "44"),
                        
                        AchivementRow(id:5,name: "NRG Third Eye", price: "subscriber after watching", image: "45")]),

        AchivementType(id: 3,rows: [
                        
                        AchivementRow(id:6,name: "NRG Third Eye", price: "subscriber after watching", image: "46"),
                        
                        AchivementRow(id:7,name: "NRG Third Eye", price: "subscriber after watching", image: "42")])

    ]
    
    
    var body : some View{
        
        VStack(){
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 2){
                    
                    ForEach(achivements){i in
                        
                        HStack{
                            
                            ForEach(i.rows){j in
                                
                                AchivementCardView(row: j)
                            }
                        }
                    }
                }
            }
            
        }.padding()
        //.background(lightGrayColor)
        .animation(.spring())
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InstructorVideoListView()
    }
}



