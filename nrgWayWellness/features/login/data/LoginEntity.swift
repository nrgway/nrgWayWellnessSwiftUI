//
//  LoginEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/16/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation
struct LoginEntity : Identifiable {
    var id: String
    var accessToken : String?
    var expiresAt : String?
    var status : Bool?
    var tokenType : String?
    
    init(data: ResLogin) {
        id = "1"
        accessToken = data.accessToken
        expiresAt = data.expiresAt
        status = data.status
        tokenType = data.tokenType
    }
    
}
