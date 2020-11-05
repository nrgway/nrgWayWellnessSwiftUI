//
//  ReqLikeToVideo.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ReqLikeToVideo : Codable {

        let id : Int?
        let like : String?

        enum CodingKeys: String, CodingKey {
                case id = "id"
                case like = "like"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                id = try values.decodeIfPresent(Int.self, forKey: .id)
                like = try values.decodeIfPresent(String.self, forKey: .like)
        }

}

