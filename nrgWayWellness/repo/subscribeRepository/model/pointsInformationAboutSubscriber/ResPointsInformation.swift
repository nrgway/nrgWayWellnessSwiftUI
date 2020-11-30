//
//  ResPointsInformation.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ResPointsInformation : Codable {

        let data : PointsInformationData?
        let status : Bool?

        enum CodingKeys: String, CodingKey {
                case data = "data"
                case status = "status"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
            data = try PointsInformationData(from: decoder)
                status = try values.decodeIfPresent(Bool.self, forKey: .status)
        }

}
