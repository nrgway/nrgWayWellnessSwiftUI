//
//  InstructorEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/14/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation

struct InstructorEntity: Identifiable {
    
    var id: Int?
    let avatar : String?
    let createdAt : String?
    let email : String?
    let firstName : String?
    let lastName : String?
    let notes : String?
    let phone : String?
    let publicDescription : String?
    let statusId : Int?
    let updatedAt : String?
    var completeAvatarURL: URL? {
        avatar.map { WebAPI.imageBase.appendingPathComponent($0)}
        
    }
    
    var completeAvatar: String {
         if ((avatar) != nil) {
            return "https://nrg.scdn5.secure.raxcdn.com/storage/" + avatar!
        } else {
            return  "https://cf.geekdo-images.com/thumb/img/sD_qvrzIbvfobJj0ZDAaq-TnQPs=/fit-in/200x150/pic2649952.jpg"
        }
    }
    
    init(instructor: InstructorListData) {
        id = instructor.id
        avatar = instructor.avatar
        createdAt = instructor.createdAt
        email = instructor.email
        firstName = instructor.firstName
        lastName = instructor.lastName
        notes = instructor.notes
        phone = instructor.phone
        publicDescription = instructor.publicDescription
        statusId = instructor.statusId
        updatedAt = instructor.updatedAt
    }
}
