//
//  FormulaListView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/26/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//ShimmerFormulaListView

import SwiftUI

struct FormulaListView: View {
    var formulaEntitys : [FormulaEntity]
    
    init(data : [FormulaEntity]) {
        formulaEntitys = data
    }
    
    var body : some View{
        VStack(){
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 4){
                    
                    ForEach(formulaEntitys){formula in
                        FormulaCardView(formula: formula)
                    }
                }
            }
        }
    }
    
}
