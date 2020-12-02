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
    @ObservedObject var viewModel: WorkOutViewModel
        
    var body: some View {
        NavigationView {
            content
                .navigationBarTitle("Trending Movies")
        }
        .onAppear { self.viewModel.send(event: .onAppear) }
    }
    
    private var content: some View {
        switch viewModel.state {
        case .idle:
            return Color.clear.eraseToAnyView()
        case .loading:
            return Spinner(isAnimating: true, style: .large).eraseToAnyView()
        case .error(let error):
            return Text(error.localizedDescription).eraseToAnyView()
        case .loaded(let formulas):
            return list(of: formulas).eraseToAnyView()
        }
    }
    
    private func list(of formulas: [FormulaEntity]) -> some View {
        return List(formulas) { formula in
            NavigationLink(
                destination: VideoPlayerView(),
                //destination: MovieDetailView(viewModel: MovieDetailViewModel(movieID: movie.id)),
                label: { FormulaCardView(formula: formula) }
            )
        }
    }
}
