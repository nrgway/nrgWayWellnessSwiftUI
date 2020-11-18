//
//  Post.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/28/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Foundation
import SwiftUI

/// Post
struct Post: Identifiable {
    
    /// unique id
    var id: String = UUID().uuidString
    
    /// user
    let user: User!
    
    /// post image
    let image: String?
    
    /// post content
    let content: String?
    
    /// post time
    let time: String!
    
    /// Init
    init(user: User, image: String?, content: String?, time: String) {
        self.user = user
        self.image = image
        self.content = content
        self.time = time
    }
}
