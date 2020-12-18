//
//  WorkOutViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/11/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Combine
import SwiftUI

final class WorkOutViewModel: ObservableObject {
    @Published var state = State.loading
    @Published var formulas: [FormulaEntity] = []
    private var formulasAnyCancellable: AnyCancellable?
    private var bag = Set<AnyCancellable>()
    
    func getFormulas() {
        formulasAnyCancellable = WebAPI.getFormulas()
            .receive(on: RunLoop.main)
            .map { $0.data.map(FormulaEntity.init)}
            .eraseToAnyPublisher()
            .sink(receiveCompletion: { _ in },
                  receiveValue: {  formulalist in
                    print(formulalist)
                    self.state = State.loaded
                    self.formulas = formulalist
                  }
            )
    }
    
     
    
    deinit {
        bag.removeAll()
    }
    
     
}

// MARK: - Inner Types

extension WorkOutViewModel {
    enum State {
        case idle
        case loading
        case loaded
        case error(Error)
    }
}


