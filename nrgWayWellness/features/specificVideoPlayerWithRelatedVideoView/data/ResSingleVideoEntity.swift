//
//  ResSingleVideoEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/23/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

struct ResSingleVideoEntity : Codable {

        let relatedVideos : [SingleVideoDataRelatedVideo]?
        let video : SingleVideoDataVideo
        let videoLogId : Int?
    
    init(singleVideoData: SingleVideoData) {
        relatedVideos = singleVideoData.relatedVideos
        video = singleVideoData.video
        videoLogId = singleVideoData.videoLogId
    }
}
