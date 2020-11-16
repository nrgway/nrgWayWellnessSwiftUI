//
//  DataStore.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/14/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import SwiftUI
import Combine

final class DataStore: ObservableObject {
    
    let didChange = PassthroughSubject<DataStore, Never>()
    
    @Published var login: Bool = false
    
    @UserDefault(key: "loggedIn", defaultValue: false)
    var loggedIn: Bool {
        didSet {
            didChange.send(self)
            self.login = self.loggedIn
        }
    }
}


final class DataOnboarding: ObservableObject {
    
    let didChange = PassthroughSubject<DataOnboarding, Never>()
    
    @Published var onboard: Bool = false
    
    @UserDefault(key: "onboardComlete", defaultValue: false)
    var onboardComlete: Bool {
        didSet {
            didChange.send(self)
            self.onboard = self.onboardComlete
        }
    }
}
