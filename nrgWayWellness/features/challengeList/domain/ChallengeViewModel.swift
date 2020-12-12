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
    @Published var challengeVideos: [InstructorVideoEntity] = []
    @Published var specificCategory: SpecificCategoryEntity? = nil
    
    private var challengeVideosAnyCancellable: AnyCancellable?
    private var specificCategoryAnyCancellable: AnyCancellable?
    
    private var bag = Set<AnyCancellable>()
    
    func getChallengeVideos()  {
        
        challengeVideosAnyCancellable = WebAPI.getVideosByInstructor(id:2)
            .map { $0.data.videos.map(InstructorVideoEntity.init)}
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  instractorlist in
                    print(instractorlist)
                    self.challengeVideos = instractorlist
                    self.state = State.loaded
                  }
            )
        
        specificCategoryAnyCancellable = WebAPI.getCategoryById(id: 43)
            .receive(on: RunLoop.main)
            .map { $0.data.category}
            .map(SpecificCategoryEntity.init)
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  category in
                    print(category)
                    self.specificCategory = category
                    
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

 
