//
//  PointsInformationData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct PointsInformationData : Codable {

        let points : Int?

        enum CodingKeys: String, CodingKey {
                case points = "points"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                points = try values.decodeIfPresent(Int.self, forKey: .points)
        }

}

