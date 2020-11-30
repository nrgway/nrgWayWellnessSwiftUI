//
//  VideosForCategoryDataCreator.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct VideosForCategoryDataCreator : Codable {

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

        enum CodingKeys: String, CodingKey {
                case avatar = "avatar"
                case createdAt = "created_at"
                case email = "email"
                case firstName = "first_name"
                case lastName = "last_name"
                case notes = "notes"
                case phone = "phone"
                case publicDescription = "public_description"
                case statusId = "status_id"
                case updatedAt = "updated_at"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                avatar = try values.decodeIfPresent(String.self, forKey: .avatar)
                createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
                email = try values.decodeIfPresent(String.self, forKey: .email)
                firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
                lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
                notes = try values.decodeIfPresent(String.self, forKey: .notes)
                phone = try values.decodeIfPresent(String.self, forKey: .phone)
                publicDescription = try values.decodeIfPresent(String.self, forKey: .publicDescription)
                statusId = try values.decodeIfPresent(Int.self, forKey: .statusId)
                updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        }

}

