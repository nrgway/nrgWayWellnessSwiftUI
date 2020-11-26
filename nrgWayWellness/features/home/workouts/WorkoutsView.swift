//
//  WorkoutsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/6/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct WorkoutsView: View {
    var body: some View {
        VStack(spacing: 15){
            
            HStack{

                Text("Workouts").font(.title)
                
                Spacer()
                
                 
                
            }.padding(.vertical, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 5){
                    
                    ForEach(workouts){i in
                        WorkoutsCellView(data: i)
                        
                    }
                }
            }
            
             
        }
    }
}
 


struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}

