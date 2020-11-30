//
//  extensionFeedback.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/8/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Foundation
import Combine

struct Feedback<State, Event> {
    let run: (AnyPublisher<State, Never>) -> AnyPublisher<Event, Never>
}

extension Feedback {
    init<Effect: Publisher>(effects: @escaping (State) -> Effect) where Effect.Output == Event, Effect.Failure == Never {
        self.run = { state -> AnyPublisher<Event, Never> in
            state
                .map { effects($0) }
                .switchToLatest()
                .eraseToAnyPublisher()
        }
    }
}
