//
//  BreweriesViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Combine
import SwiftUI

class BreweriesViewModel: ObservableObject {
    
    
    private let url = "https://api.openbrewerydb.org/breweries"
    private var task: AnyCancellable?
    
    @Published var breweries: [Brewery] = []
    func fetchBreweries() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data }
            .decode(type: [Brewery].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \BreweriesViewModel.breweries, on: self)
    }
    
     
}
