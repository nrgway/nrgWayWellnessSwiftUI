//
//  CheckChallengeData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct CheckChallengeData : Codable {

        let isUploaded : Bool?

        enum CodingKeys: String, CodingKey {
                case isUploaded = "is_uploaded"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                isUploaded = try values.decodeIfPresent(Bool.self, forKey: .isUploaded)
        }

}

