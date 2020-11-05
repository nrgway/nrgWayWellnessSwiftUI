//
//  LevelInformationData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Foundation

struct LevelInformationData : Codable {

        let currentLevel : String?
        let currentLevelPct : String?
        let firstName : String?
        let lastName : String?
        let nextLevel : String?
        let points : Int?
        let pointsToNextLevel : String?

        enum CodingKeys: String, CodingKey {
                case currentLevel = "current_level"
                case currentLevelPct = "current_level_pct"
                case firstName = "first_name"
                case lastName = "last_name"
                case nextLevel = "next_level"
                case points = "points"
                case pointsToNextLevel = "points_to_next_level"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                currentLevel = try values.decodeIfPresent(String.self, forKey: .currentLevel)
                currentLevelPct = try values.decodeIfPresent(String.self, forKey: .currentLevelPct)
                firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
                lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
                nextLevel = try values.decodeIfPresent(String.self, forKey: .nextLevel)
                points = try values.decodeIfPresent(Int.self, forKey: .points)
                pointsToNextLevel = try values.decodeIfPresent(String.self, forKey: .pointsToNextLevel)
        }

}

