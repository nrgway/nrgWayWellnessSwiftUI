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

extension ChallengeViewModel {
    enum State {
        case idle
        case loading
        case instructorMoviesloaded([InstructorVideoEntity])
        case error(Error)
    }
    
    enum Event {
        case onAppear
        case onSelectInstructorMovie(Int)
        case onInstructorMoviesLoaded([InstructorVideoEntity])
        case onFailedToLoadInstructorMovies(Error)
    }
     
}

// MARK: - State Machine

extension ChallengeViewModel {
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
            case .onFailedToLoadInstructorMovies(let error):
                return .error(error)
                
            case .onInstructorMoviesLoaded(let instructorVideo):
                return .instructorMoviesloaded(instructorVideo)
            default:
                return state
            }
        case .instructorMoviesloaded:
            return state
        case .error:
            return state
        }
    }
    
    static func whenLoading() -> Feedback<State, Event> {
        Feedback { (state: State) -> AnyPublisher<Event, Never> in
            guard case .loading = state else { return Empty().eraseToAnyPublisher() }
            
            return WebAPI.getVideosByInstructor(id:2)
                .map { $0.data.videos.map(InstructorVideoEntity.init)}
                .map(Event.onInstructorMoviesLoaded)
                .catch { Just(Event.onFailedToLoadInstructorMovies($0)) }
                .eraseToAnyPublisher()
        }
    }
    
    static func userInput(input: AnyPublisher<Event, Never>) -> Feedback<State, Event> {
        Feedback { _ in input }
    }
}

