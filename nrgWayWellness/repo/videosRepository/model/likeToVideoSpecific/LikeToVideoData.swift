//
//  LikeToVideoData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Foundation

struct LikeToVideoData : Codable {

        let countLike : Int?
        let like : Bool?

        enum CodingKeys: String, CodingKey {
                case countLike = "count_like"
                case like = "like"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                countLike = try values.decodeIfPresent(Int.self, forKey: .countLike)
                like = try values.decodeIfPresent(Bool.self, forKey: .like)
        }

}

