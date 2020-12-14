//
//  SingleVideoDataCategoryPivot.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/23/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation

struct SingleVideoDataCategoryPivot : Codable {

        let categoryId : Int?
        let videoId : Int?

        enum CodingKeys: String, CodingKey {
                case categoryId = "category_id"
                case videoId = "video_id"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                categoryId = try values.decodeIfPresent(Int.self, forKey: .categoryId)
                videoId = try values.decodeIfPresent(Int.self, forKey: .videoId)
        }

}
