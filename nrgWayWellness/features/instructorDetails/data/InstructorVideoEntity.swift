//
//  InstructorVideoEntity.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/15/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import Foundation

struct InstructorVideoEntity: Identifiable {
    
    let createdAt : String?
    let creatorId : Int?
    let difficultyId : Int?
    let id : Int?
    let internalNotes : String?
    let length : Int?
    let publicDescription : String?
    let releaseDate : String?
    let shortUrl : String?
    let statusId : Int?
    let thumbnail : String?
    let title : String?
    let updatedAt : String?
    let uploadsEnabled : Int?
    let urlHigh : String?
    let urlLow : String?
    let urlMedium : String?
    let urlOriginal : String?
    let vimeoUri : String?
    
    var completeAvatarURL: URL? { thumbnail.map { WebAPI.imageBase.appendingPathComponent($0) } }
    
    init(video: VideosForTrainerDTO) {
        
        creatorId = video.creatorId
        createdAt = video.createdAt
        difficultyId = video.difficultyId
        id = video.id
        internalNotes = video.internalNotes
        length = video.length
        publicDescription = video.publicDescription
        releaseDate = video.releaseDate
        shortUrl = video.shortUrl
        statusId = video.statusId
        thumbnail = video.thumbnail
        title = video.title
        updatedAt = video.updatedAt
        uploadsEnabled = video.creatorId
        urlHigh = video.urlHigh
        urlLow = video.urlLow
        urlMedium = video.urlMedium
        urlOriginal = video.urlOriginal
        vimeoUri = video.vimeoUri
    }
     
}
