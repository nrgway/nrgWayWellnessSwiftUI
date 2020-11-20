//
//  ChallengesView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/1/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct ChallengesView: View {
    var body : some View {
        VStack(spacing: 15){
            
            
            HStack{

                Text("Recipe").font(.title)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("More")
                    
                }.foregroundColor(Color("Color"))
                
            }.padding(.vertical, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(recipeitems){i in
                        
                        ChallengesCellView(data: i)
                    }
                }
            }
        }
    }
    
}

struct ChallengesView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengesView()
    }
}
