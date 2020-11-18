//
//  User.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/28/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation
import SwiftUI

/// User
struct User: Identifiable {
    
    /// unique id
    var id: String = UUID().uuidString
    
    /// user name
    let name: String
    
    /// user profile avatar
    let avatar: String
    
    /// Init
    init(name: String, avatar: String) {
        self.name = name
        self.avatar = avatar
    }
}
