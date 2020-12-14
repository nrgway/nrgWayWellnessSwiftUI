//
//  ChallengesView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct ChallengesView: View {
    
    var categories : [CategoryEntity]
    
    init(data : [CategoryEntity]) {
        categories = data
    }
    
    var body : some View{
        VStack(){
            
            HStack{

                Text("CHALLENGES")
                    .font(.system(size: 24))
                    .padding(.leading, 8)
                    .foregroundColor(Color.white)
                
                Spacer()
                
                
                
            }.padding(15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(categories){challenge in
                        ChallengesCellView(data: challenge)
                       
                    }
                }
            }
            
            Spacer().frame(height: 90)
            
             
        }
       
        .background(LinearGradient(gradient: .init(colors: [loginFirstBlueColor, loginSecondBlueColor]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
        //.clipShape(ChallengesViewCShape())
    }
    
    struct ChallengesViewCShape : Shape {
        
        func path(in rect: CGRect) -> Path {
            
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 25, height: 15))
            
            return Path(path.cgPath)
        }
    }
}


 
