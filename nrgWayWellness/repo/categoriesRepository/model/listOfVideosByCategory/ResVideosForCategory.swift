//
//  ResVideosForCategory.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ResVideosForCategory : Codable {

        let data : [VideosForCategoryData]?
        let records : Int?
        let status : Bool?

        enum CodingKeys: String, CodingKey {
                case data = "data"
                case records = "records"
                case status = "status"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                data = try values.decodeIfPresent([VideosForCategoryData].self, forKey: .data)
                records = try values.decodeIfPresent(Int.self, forKey: .records)
                status = try values.decodeIfPresent(Bool.self, forKey: .status)
        }

}

