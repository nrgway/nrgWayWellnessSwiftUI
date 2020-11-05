//
//  AchievementData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct AchievementData : Codable {

        let badge : String?
        let createdAt : String?
        let descriptionField : String?
        let name : String?
        let status : String?
        let updatedAt : String?

        enum CodingKeys: String, CodingKey {
                case badge = "badge"
                case createdAt = "created_at"
                case descriptionField = "description"
                case name = "name"
                case status = "status"
                case updatedAt = "updated_at"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                badge = try values.decodeIfPresent(String.self, forKey: .badge)
                createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
                descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                status = try values.decodeIfPresent(String.self, forKey: .status)
                updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        }

}

