//
//  GetInfoEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/8/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct GetInfoEntity {
    
    public let avatar : String?
    let difficultyId : Int?
    let email : String?
    var firstName : String? 
    let lastName : String?
    let id : Int?
    let phone : String?
    let preferences : String?
    let registrationDate : String?
    
    var poster: URL? { avatar.map { MoviesAPI.imageBase.appendingPathComponent($0) } }
    
    init(resGetInfo: ResGetInfo) {
        
        avatar = resGetInfo.data?.avatar
        difficultyId = resGetInfo.data?.difficultyId
        email = resGetInfo.data?.email
        firstName = resGetInfo.data?.firstName
        lastName = resGetInfo.data?.lastName
        id = resGetInfo.data?.id
        phone = resGetInfo.data?.phone
        preferences = resGetInfo.data?.preferences
        
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .abbreviated
        formatter.allowedUnits = [.minute, .hour]
        registrationDate = resGetInfo.data?.registrationDate
        
    }
    
    func getFirstName() -> String {
        return firstName ?? ""
    }
}
