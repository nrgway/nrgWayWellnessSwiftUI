//
//  WorkoutsView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/6/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI

struct WorkoutsView: View {
    
    var formulas : [FormulaEntity]
    
    init(data : [FormulaEntity]) {
        formulas = data
    }
    
    var body: some View {
        VStack(){
            HStack{

                Text("Workouts")
                    .font(.system(size: 24))
                    .foregroundColor(grayHomeTitileColor)
                    .padding(.leading, 8)
                
                Spacer()
                
                 
                
            }.padding(.vertical, 1)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 8){
                    
                    ForEach(formulas) { i in
                        WorkoutsCellView(data: i)
                    }
                }
            }
            
             
        }
    }
}
 
 

