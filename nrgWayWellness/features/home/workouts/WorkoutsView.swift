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
        VStack(){
            HStack{

                Text("Workouts")
                    .font(.title)
                    .foregroundColor(grayHomeTitileColor)
                
                Spacer()
                
                 
                
            }.padding(.vertical, 1)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 8){
                    
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

