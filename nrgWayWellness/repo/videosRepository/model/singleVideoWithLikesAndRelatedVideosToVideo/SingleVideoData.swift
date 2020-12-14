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
        let video : SingleVideoDataVideo
        let videoLogId : Int?
    
        enum CodingKeys: String, CodingKey {
                case relatedVideos = "related_videos"
                case video = "video"
                 case videoLogId = "video_log_id"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
            relatedVideos = try values.decodeIfPresent([SingleVideoDataRelatedVideo].self, forKey: .relatedVideos)
            video = try SingleVideoDataVideo(from: decoder)
            videoLogId = try values.decodeIfPresent(Int.self, forKey: .videoLogId)
        }

}

