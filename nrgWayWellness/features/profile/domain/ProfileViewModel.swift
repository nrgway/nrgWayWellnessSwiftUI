//
//  ProfileViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/8/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation
import Combine

final class ProfileViewModel: ObservableObject {
    @Published private(set) var state: State
    
    private var bag = Set<AnyCancellable>()
    
    private let input = PassthroughSubject<Event, Never>()
    
    init() {
        state = .idle
        
        Publishers.system(
            initial: state,
            reduce: Self.reduce,
            scheduler: RunLoop.main,
            feedbacks: [
                Self.whenLoading(),
                Self.userInput(input: input.eraseToAnyPublisher())
            ]
        )
        .assign(to: \.state, on: self)
        .store(in: &bag)
    }
    
    func send(event: Event) {
        input.send(event)
    }
}

// MARK: - Inner Types

extension ProfileViewModel {
    enum State {
        case idle
        case loading
        case loaded(GetInfoEntity)
        case error(Error)
    }
    
    enum Event {
        case onAppear
        case onLoaded(GetInfoEntity)
        case onFailedToLoad(Error)
    }

}

// MARK: - State Machine

extension ProfileViewModel {
    static func reduce(_ state: State, _ event: Event) -> State {
        switch state {
        
        case .idle:
            switch event {
            case .onAppear:
                return .loading
                
            default:
                return state
            }
            
        case .loading:
            switch event {
            
            case .onFailedToLoad(let error):
                return .error(error)
                
            case .onLoaded(let movie):
                return .loaded(movie)
                
            default:
                return state
            }
            
        case .loaded:
            return state
            
        case .error:
            return state
        }
    }
    
    static func whenLoading() -> Feedback<State, Event> {
        Feedback { (state: State) -> AnyPublisher<Event, Never> in
            guard case .loading = state else { return Empty().eraseToAnyPublisher() }
            return MoviesAPI.subscriberGetInfo()
                .map(GetInfoEntity.init)
                .map(Event.onLoaded)
                
                .catch { Just(Event.onFailedToLoad($0)) } 
                .eraseToAnyPublisher()
                
                    
        }
    }
    
    static func userInput(input: AnyPublisher<Event, Never>) -> Feedback<State, Event> {
        Feedback(run: { _ in
            return input
        })
    }
}

