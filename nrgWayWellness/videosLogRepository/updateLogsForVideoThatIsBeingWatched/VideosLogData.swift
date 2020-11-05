//
//  VideosLogData.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/15/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//
import Foundation

struct VideosLogData : Codable {

        let playbackComplete : Bool?
        let playcount : Int?
        let playedTime : Int?
        let seeked : Bool?

        enum CodingKeys: String, CodingKey {
                case playbackComplete = "playback_complete"
                case playcount = "playcount"
                case playedTime = "played_time"
                case seeked = "seeked"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                playbackComplete = try values.decodeIfPresent(Bool.self, forKey: .playbackComplete)
                playcount = try values.decodeIfPresent(Int.self, forKey: .playcount)
                playedTime = try values.decodeIfPresent(Int.self, forKey: .playedTime)
                seeked = try values.decodeIfPresent(Bool.self, forKey: .seeked)
        }

}

