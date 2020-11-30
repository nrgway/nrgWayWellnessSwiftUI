//
//  GetInfoDataStatusDTO.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/9/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Foundation

struct GetInfoDataStatusDTO : Codable {

        let createdAt : String?
        let descriptionField : String?
        let entity : String?
        let id : Int?
        let isActive : Int?
        let name : String?
        let updatedAt : String?

        enum CodingKeys: String, CodingKey {
                case createdAt = "created_at"
                case descriptionField = "description"
                case entity = "entity"
                case id = "id"
                case isActive = "is_active"
                case name = "name"
                case updatedAt = "updated_at"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
                descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
                entity = try values.decodeIfPresent(String.self, forKey: .entity)
                id = try values.decodeIfPresent(Int.self, forKey: .id)
                isActive = try values.decodeIfPresent(Int.self, forKey: .isActive)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        }

}

