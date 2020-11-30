//
//  LoginViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Combine
import SwiftUI

//class LoginViewModel: ObservableObject {
//    private let url = "https://app.nrgway.com/api/v1/auth/login"
//    private var task: AnyCancellable?
//
//    @Published var breweries = ResLogin()
//
//    func fetchBreweries() {
//        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
//            .map { $0.data }
//            .decode(type: ResLogin.self, decoder: JSONDecoder())
//            .replaceError(with: [])
//            .eraseToAnyPublisher()
//            .receive(on: RunLoop.main)
//            .assign(to: \LoginViewModel.breweries, on: self)
//    }
//}
