//
//  SingleVideoData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct SingleVideoData : Codable {

        let relatedVideos : [SingleVideoDataRelatedVideo]?
        let video : SingleVideoDataVideo?

        enum CodingKeys: String, CodingKey {
                case relatedVideos = "related_videos"
                case video = "video"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                relatedVideos = try values.decodeIfPresent([SingleVideoDataRelatedVideo].self, forKey: .relatedVideos)
            video = try SingleVideoDataVideo(from: decoder)
        }

}

