//
//  ChallengeViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/17/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//
import Combine
import SwiftUI

final class ChallengeViewModel: ObservableObject {
    
    @Published private(set) var state = State.loading
    @Published var categories: [CategoryEntity] = []
    @Published var specificCategory: SpecificCategoryEntity? = nil
     
    private var specificCategoryAnyCancellable: AnyCancellable?
    private var categoriesAnyCancellable: AnyCancellable?
    
    
    
    private var bag = Set<AnyCancellable>()
    
    func getChallengeVideos(id: Int)  {
        
         
        print("-------------id--------------------")
        
        categoriesAnyCancellable = WebAPI.getCategories()
            .receive(on: RunLoop.main)
            .map { $0.data.map(CategoryEntity.init)}
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  categorylist in
                    print(categorylist)
                    self.state = State.loaded
                    self.categories = categorylist
                  }
            )
        
        specificCategoryAnyCancellable = WebAPI.getCategoryById(id: id)
            .receive(on: RunLoop.main)
            .map { $0.data.category}
            .map(SpecificCategoryEntity.init)
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  category in
                    print("-------------category--------------------")
                    print(category)
                    print("-------------category--------------------")
                    self.specificCategory = category
                    self.state = State.loaded
                  }
            )
        
    }
    
    deinit {
        bag.removeAll()
    }
    
    
}

// MARK: - Inner Types

extension ChallengeViewModel {
    enum State {
        case idle
        case loading
        case loaded
        case error(Error)
    }
}

// MARK: - State Machine

