//
//  FavoriteVideosViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/1/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Combine
import SwiftUI

final class FavoriteVideosViewModel: ObservableObject {
    @Published var state = State.loading
    @Published var favoriteVideos: [CategoryEntity] = []
    
    private var task: AnyCancellable?
    private var bag = Set<AnyCancellable>()
    
    
    deinit {
        bag.removeAll()
    }
    
    func getFavoriteVideos()  {
        
        task = WebAPI.getCategories()
            .receive(on: RunLoop.main)
            .map { $0.data.map(CategoryEntity.init)}
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  categorylist in
                    print(categorylist)
                    self.state = State.loaded
                    self.favoriteVideos = categorylist
                  }
            )
         
        
        
    }
    
    
}

// MARK: - Inner Types

extension FavoriteVideosViewModel {
    enum State {
        case idle
        case loading
        case loaded
        case error(Error)
    }
    
    
    
}
 

