//
//  FormulaData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct FormulaData : Codable {

        let createdAt : String?
        let descriptionField : String?
        let iconUrl : String?
        let imageUrl : String?
        let name : String?
        let updatedAt : String?
        let videoSize : Int?
        let videoUrl : String?

        enum CodingKeys: String, CodingKey {
                case createdAt = "created_at"
                case descriptionField = "description"
                case iconUrl = "icon_url"
                case imageUrl = "image_url"
                case name = "name"
                case updatedAt = "updated_at"
                case videoSize = "video_size"
                case videoUrl = "video_url"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
                descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
                iconUrl = try values.decodeIfPresent(String.self, forKey: .iconUrl)
                imageUrl = try values.decodeIfPresent(String.self, forKey: .imageUrl)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
                videoSize = try values.decodeIfPresent(Int.self, forKey: .videoSize)
                videoUrl = try values.decodeIfPresent(String.self, forKey: .videoUrl)
        }

}

