//
//  HomeViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/13/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//
 

import Combine
import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published private(set) var state = State.idle
    
    private var bag = Set<AnyCancellable>()
    
    private let input = PassthroughSubject<Event, Never>()
    
    init() {
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
    
    deinit {
        bag.removeAll()
    }
    
    func send(event: Event) {
        input.send(event)
    }
}

// MARK: - Inner Types

extension HomeViewModel {
    enum State {
        case idle
        case loading
        case instructorsLoaded([InstructorEntity])
        case error(Error)
    }
    
    enum Event {
        case onAppear
        case onSelectInstructor(Int)
        case onInstructorsLoaded([InstructorEntity])
        case onFailedToLoadInstructors(Error)
    }
     
}

// MARK: - State Machine

extension HomeViewModel {
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
            case .onFailedToLoadInstructors(let error):
                return .error(error)
                
            case .onInstructorsLoaded(let formula):
                return .instructorsLoaded(formula)
                
            default:
                return state
            }
            
        case .instructorsLoaded:
            return state
            
        case .error:
            return state
        }
    }
    
    static func whenLoading() -> Feedback<State, Event> {
        Feedback { (state: State) -> AnyPublisher<Event, Never> in
            guard case .loading = state else { return Empty().eraseToAnyPublisher() }
            
            return WebAPI.getInstructors()
                .map { $0.data.map(InstructorEntity.init)}
                .map(Event.onInstructorsLoaded)
                .catch { Just(Event.onFailedToLoadInstructors($0)) }
                .eraseToAnyPublisher()
        }
    }
    
    static func userInput(input: AnyPublisher<Event, Never>) -> Feedback<State, Event> {
        Feedback { _ in input }
    }
    
}

