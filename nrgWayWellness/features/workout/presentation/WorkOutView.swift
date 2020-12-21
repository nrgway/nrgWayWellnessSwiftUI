//
//  WorkOutView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
import Alamofire

struct WorkOutView: View {
    @State var show  = false
    @ObservedObject var viewModel = WorkOutViewModel()
    
    var body: some View {
        NavigationView {
            content.navigationBarTitle("")
        }
        .onAppear { self.viewModel.getFormulas() }
    }
    
    private var content: some View {
        switch viewModel.state {
        case .idle:
            return Color.clear.eraseToAnyView()
            
        case .loading:
            return shimmerList().eraseToAnyView()
                //LoadingView().eraseToAnyView()
            
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
            
        case .loaded:
            return list().eraseToAnyView()
        }
    }
    
    private func list() -> some View {
        
        let v = VStack {
            WorkoutStepperView()
            FormulaListView(data: viewModel.formulas)
        }
         
        return v
        
    }
    
    
    private func shimmerList() -> some View {
        
        let v = VStack {
            ShimmerWorkoutStepperView()
                .padding(30)
            
            ForEach(0...6,id: \.self){_ in
                ShimmerFormulaCardView()
            } 
        }
         
        return v
        
    }
    
}
