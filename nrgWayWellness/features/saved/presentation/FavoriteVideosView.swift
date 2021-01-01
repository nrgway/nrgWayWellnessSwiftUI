//
//  SavedView.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//FavoriteVideosViewModel

import SwiftUI

struct FavoriteVideosView: View {
    @State var show  = false
    @ObservedObject var viewModel = FavoriteVideosViewModel()
    
    var body: some View {
//        NavigationView {
//            content.navigationBarTitle("")
//        }
        content.onAppear {
            self.viewModel.getFavoriteVideos()            
        }
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
         
        case .empty:
            return FavoriteVideoListEmptyView().eraseToAnyView()
        }
        
    }
    
    private func list() -> some View {
        
        let v = VStack {
             
            FavoriteVideoListView(favoriteVideos: viewModel.favoriteVideos)
                 
        }
         
        return v
        
    }
    
    
    private func shimmerList() -> some View {
        
        let v = VStack {
            ShimmerFavoriteVideoListView()
            
        }
         
        return v
        
    }
    
}
