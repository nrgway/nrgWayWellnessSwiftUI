//
//  FormulaData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct FormulaData : Codable {
    
    let cardioName : String?
    let createdAt : String?
    let descriptionField : String?
    let favoritesOnly : Int?
    let iconUrl : String?
    let id : Int?
    let imageUrl : String?
    let name : String?
    let randomize : Int?
    let sortOrder : Int?
    let stretchName : String?
    let updatedAt : String?
    let videoSize : String?
    let videoUrl : String?
    let workoutName : String?
    
     enum CodingKeys: String, CodingKey {
        case cardioName = "cardio_name"
        case createdAt = "created_at"
        case descriptionField = "description"
        case favoritesOnly = "favorites_only"
        case iconUrl = "icon_url"
        case id = "id"
        case imageUrl = "image_url"
        case name = "name"
        case randomize = "randomize"
        case sortOrder = "sort_order"
        case stretchName = "stretch_name"
        case updatedAt = "updated_at"
        case videoSize = "video_size"
        case videoUrl = "video_url"
        case workoutName = "workout_name"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cardioName = try values.decodeIfPresent(String.self, forKey: .cardioName)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
        favoritesOnly = try values.decodeIfPresent(Int.self, forKey: .favoritesOnly)
        iconUrl = try values.decodeIfPresent(String.self, forKey: .iconUrl)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        imageUrl = try values.decodeIfPresent(String.self, forKey: .imageUrl)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        randomize = try values.decodeIfPresent(Int.self, forKey: .randomize)
        sortOrder = try values.decodeIfPresent(Int.self, forKey: .sortOrder)
        stretchName = try values.decodeIfPresent(String.self, forKey: .stretchName)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        videoSize = try values.decodeIfPresent(String.self, forKey: .videoSize)
        videoUrl = try values.decodeIfPresent(String.self, forKey: .videoUrl)
        workoutName = try values.decodeIfPresent(String.self, forKey: .workoutName)
    }
    
}
