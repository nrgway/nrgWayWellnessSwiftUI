//
//  SavedMockData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/28/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

/// Test Data
struct SavedMockData {
    
    /// users
    static let userTimCook     =   User(name: "Tim Cook", avatar: "tim")
    static let userSteveJobs   =   User(name: "Steve Jobs", avatar: "steve")
    static let userCraig       =   User(name: "Craig Federighi", avatar: "craig")
    static let userElonMusk    =   User(name: "Elon Musk", avatar: "elon")
    
    
    
    /// posts
    static func posts() -> [Post] {
        let post1 = Post(user: userTimCook, image: "20",
                         content: "Isolation Session Vol #15",
                         time: "04:45")
        
        let post2 = Post(user: userSteveJobs, image: "25",
                         content: "Isolation Session Vol #15",
                         time: "05:45")
        
        let post3 = Post(user: userCraig, image: "26",
                         content: "Isolation Session Vol #15.",
                         time: "12:00")
        
        let post4 = Post(user: userElonMusk, image: "27",
                         content: "Isolation Session Vol #15",
                         time: "13:34")
        
        return [post1, post2, post3, post4]
    }
    
    
    
}

