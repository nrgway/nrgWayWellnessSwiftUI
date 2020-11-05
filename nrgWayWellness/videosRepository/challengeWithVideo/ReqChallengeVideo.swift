//
//  ReqChallengeVideo.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 8/16/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//

import Foundation

struct ReqChallengeVideo : Codable {

        let challengeVideoMimeType : String?
        let challengeVideoPath : String?
        let images : String?
        let isPublic : Bool?
        let title : String?

        enum CodingKeys: String, CodingKey {
                case challengeVideoMimeType = "challenge_video_mime_type"
                case challengeVideoPath = "challenge_video_path"
                case images = "images"
                case isPublic = "is_public"
                case title = "title"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                challengeVideoMimeType = try values.decodeIfPresent(String.self, forKey: .challengeVideoMimeType)
                challengeVideoPath = try values.decodeIfPresent(String.self, forKey: .challengeVideoPath)
                images = try values.decodeIfPresent(String.self, forKey: .images)
                isPublic = try values.decodeIfPresent(Bool.self, forKey: .isPublic)
                title = try values.decodeIfPresent(String.self, forKey: .title)
        }

}

