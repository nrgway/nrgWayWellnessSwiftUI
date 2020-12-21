//
//  AchivementViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/29/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//


import Combine
import SwiftUI

final class AchivementViewModel: ObservableObject {
    @Published var state = State.loading
    @Published var instructors: [InstructorEntity] = []
    
    private var task: AnyCancellable?
    private var bag = Set<AnyCancellable>()
    
    
    deinit {
        bag.removeAll()
    }
    
    func getInstructors()  {
        
        task = WebAPI.getInstructors()
            .receive(on: RunLoop.main)
            .map { $0.data.map(InstructorEntity.init)}
            .eraseToAnyPublisher()
            
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  instractorlist in
                    print(instractorlist)
                    self.state = State.loaded
                    self.instructors = instractorlist
                  }
            )
        
        
    }
    
    
}

// MARK: - Inner Types

extension AchivementViewModel {
    enum State {
        case idle
        case loading
        case loaded
        case error(Error)
    }
    
    
    
}
 

