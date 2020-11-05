//
//  ResVideosLog.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ResVideosLog : Codable {

        let videoMetadata : VideosLogData?

        enum CodingKeys: String, CodingKey {
                case videoMetadata = "video_metadata"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
            videoMetadata = try VideosLogData (from: decoder)
        }

}

