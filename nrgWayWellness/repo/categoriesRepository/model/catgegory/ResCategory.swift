//
//  ResCategory.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ResCategory : Codable {

        let data : CategoryData?
        let status : Bool?

        enum CodingKeys: String, CodingKey {
                case data = "data"
                case status = "status"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                data = try CategoryData(from: decoder)
                status = try values.decodeIfPresent(Bool.self, forKey: .status)
        }

}

